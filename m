Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76C0E72EADC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 20:24:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E5E3B400BF;
	Tue, 13 Jun 2023 18:24:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E5E3B400BF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686680690;
	bh=YNwHxO9MT+aXohHQLxV6k3H05pzKNORPDysgNtcyXJ0=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=kxtxccMOVX2voWz7A5e8npVKkERMotymKHW0Z21myRgRCVz90Rkrly/dDSPX+Hrou
	 G8SirNR9J9gCmIzlqy4VhrfgN8974BiXVx8rtCue6zQmXSaUuM66QrChgAcZOqRiTK
	 xDvpDJoy/vGc6SvVfhfWZ7MbWDrXlnR6M3if9vkYcNVFE+6x35PG2nF+huhWthMXyf
	 snQC7ZnYSjF+YWX0NjaaJJq/bQjv/+pNdNyjIBR9PRK3u77gYdpNxRdAUzGkPEyZdG
	 c1AIENK8hH7mEwY/mg9/vlvfPWwmnW5ZRJa8eKtytjSGlVSBz4qDEot+p3Hv1CPwM9
	 f5J3SDhaMGs9Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dw0Uqa_DvPOn; Tue, 13 Jun 2023 18:24:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A25D4052A;
	Tue, 13 Jun 2023 18:24:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A25D4052A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5E4321BF34B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 18:24:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 359C64052A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 18:24:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 359C64052A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KHsd82cZzu6Z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 18:24:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6315F400BF
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6315F400BF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 18:24:38 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id BAFA561ED8;
 Tue, 13 Jun 2023 18:24:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC6ADC433D9;
 Tue, 13 Jun 2023 18:24:36 +0000 (UTC)
Date: Tue, 13 Jun 2023 11:24:35 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Piotr Gardocki <piotrx.gardocki@intel.com>
Message-ID: <20230613112435.18dc8130@kernel.org>
In-Reply-To: <9ea8a985-923d-62ec-5a34-ef7eeb056f05@intel.com>
References: <20230613122420.855486-1-piotrx.gardocki@intel.com>
 <20230613122420.855486-4-piotrx.gardocki@intel.com>
 <4db2d627-782c-90c2-4826-76b9779149ce@intel.com>
 <c9f819da-61a6-ea8f-5e16-d9aad6634127@intel.com>
 <837ccaeb-a77d-5570-1363-e5e344528f97@intel.com>
 <08b11944-984f-eeeb-4b03-777faaa3ce01@intel.com>
 <9ea8a985-923d-62ec-5a34-ef7eeb056f05@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1686680677;
 bh=A005nyPSR9jUxTXYuLs+acV5N0eBgSvqxWNwQk/+X+s=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=pPYkCBz6dfGob5Odf1vnwK7Fvz8kgt3dGA/BrjEJZU0hVWQvfLEm5yVHc7b9DuQWl
 igVUgkwfDV52ZKOoQ1qrVXhLN0LkUUMtbS/GfUm4ANYJaZaEKxsW9jJUP8Qs/LxS3H
 C284kHAhdYN5RqH5fKzonoM2hMYe//DuZho3O6vOlaq+kiT+wmsWl2yyKlhbT2EEMA
 t/TFLizi9ZzbAkH6EUsgqU05/4dbs8oBeJ7w4ki1ffl5rTDLQAZwHDH2yqySE3UySW
 EPcbcKse1V9S3aHSyDHi3IsRit7unQyMLqGetOFJ+XN0iL854AjKUUNQwGZEoQm/TU
 DQk4mBpK4Yb6g==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pPYkCBz6
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/3] ice: remove
 unnecessary check for old MAC == new MAC
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: pmenzel@molgen.mpg.de, simon.horman@corigine.com, netdev@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>, anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 13 Jun 2023 17:32:50 +0200 Piotr Gardocki wrote:
> > there is ether_addr_equal() call in iavf_set_mac(), even if not
> > exactly before eth_hw_addr_set(), it still should be removed ;)
> > 
> > Anyway, I would fix all 3 drivers with one patch.  
> 
> I guess you're looking at old version of dev-queue branch on Tony's
> tree :) Regarding ice and i40e I made two patches to have different
> prefixes in titles. I don't mind merging them, but I'll wait for
> someone else speaking up about this.

I think the series is good enough, FWIW. We're already at -rc6, seems
more important to give syzbot and testers time to exercise the core
change than fishing out more drivers.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
