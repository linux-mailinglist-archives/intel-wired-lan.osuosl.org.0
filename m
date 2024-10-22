Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8E29AB343
	for <lists+intel-wired-lan@lfdr.de>; Tue, 22 Oct 2024 18:04:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9290060646;
	Tue, 22 Oct 2024 16:04:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id b597GAdeMel6; Tue, 22 Oct 2024 16:04:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9963C6065C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729613078;
	bh=XEJghKZ4PM30enj+E+76dwMk1OKlg/8QPn+39+h/Neo=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8DX6lfSLPv8rddTcf9xThwlhnH1+hUT7dbUl9qfZ/qu3r7FtQsRpFnefEIuJTulhm
	 ayyCBqGVFvxzwwwjdj9w1bQyHAItiF0i3prTj9fuye042kDtkXzJV7taC91/J8miGc
	 DkJWN5O4RoKQ9BeNPRzkYExkhkm6Cm/mZ8+Evg31KunHYecUID4N0b3Cc401UaLk6P
	 Rl2jpq6w9ZHc4ozXXQE+0ZEruou7eKPGshNFsJN77VP6vrliEQ2mAgmUuI4l3WUS5l
	 uOti6cEQI1n28wJ1EV5lAijHiylJoYxh4TU4iEzCgmy5tREFtEi7rXU5wSP2EzOnvW
	 VVQSGCU5L9AIw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9963C6065C;
	Tue, 22 Oct 2024 16:04:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 772FE2072
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 16:04:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6524260646
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 16:04:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6n49TPfL0MDS for <intel-wired-lan@lists.osuosl.org>;
 Tue, 22 Oct 2024 16:04:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 81A9A605D4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81A9A605D4
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 81A9A605D4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 22 Oct 2024 16:04:35 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 43FE95C5E5B;
 Tue, 22 Oct 2024 16:04:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AC0CC4CEF4;
 Tue, 22 Oct 2024 16:04:30 +0000 (UTC)
Date: Tue, 22 Oct 2024 17:04:28 +0100
From: Simon Horman <horms@kernel.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Piotr Kwapulinski <piotr.kwapulinski@intel.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 bhelgaas@google.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <20241022160428.GA402847@kernel.org>
References: <20241021144654.5453-1-piotr.kwapulinski@intel.com>
 <20241022153011.GA879691@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241022153011.GA879691@bhelgaas>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729613072;
 bh=olmWF5ywJz29Bov1x+Xd+EIZX6ic0BwA5ldNmsz55j4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HuLhUTfYCpQtK1uFSmv1kDc1PG5frbaXg1t7RKigUlgUseMHxy1qmB7h/I+feQLre
 XA/Az+JitvhSziC3SZs+eYc2v63V0dCDTpLAcb1k5/Kwac8xxez6SdRUWA5kTyAd82
 xIOR00PszmAxk1CUrefNASAWKQnEawS+e/ILtjF5eEzat8du7/ipzNVZ7YzCpL6CM2
 lID8mvXZAN46mxkqolGd9/CR9dX49VHmcAoabQ/vCS2IXr+N6ZDujpgsF6wD0DlnDp
 yatMT9r9kJfb09ME5046mJouxmV8yxTOHhakvaMQMFeoflf/TJg7EGNfS5gbfgy+rN
 6mT+gufocebpg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=HuLhUTfY
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2 1/2] PCI: Add
 PCI_VDEVICE_SUB helper macro
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 22, 2024 at 10:30:11AM -0500, Bjorn Helgaas wrote:
> On Mon, Oct 21, 2024 at 04:46:54PM +0200, Piotr Kwapulinski wrote:
> > PCI_VDEVICE_SUB generates the pci_device_id struct layout for
> > the specific PCI device/subdevice. Private data may follow the
> > output.
> > 
> > Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> > Signed-off-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
> 
> This looks OK to me but needs to be included in a series that uses it.
> I looked this message up on lore but can't find the 2/2 patch that
> presumably uses it.
> 
> If 2/2 uses this,
> 
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>

Hi Bjorn,

The threading of this patch-set does seem somehow broken.
But, FWIIW, I believe that patch 2/2 is here:

- [PATCH iwl-next v2 2/2] ixgbevf: Add support for Intel(R) E610 device
  https://lore.kernel.org/netdev/20241021144841.5476-1-piotr.kwapulinski@intel.com/
