Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FDDAB384CB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Aug 2025 16:20:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EF4E80EB9;
	Wed, 27 Aug 2025 14:20:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1mIT5i3yQg9d; Wed, 27 Aug 2025 14:20:12 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7794480EC6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756304412;
	bh=zajJm4wqtM1gfSpPDN6AnR0WBCDzDtOlo8pvkPgnnSM=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Jogy8TpwiPX8uvqzUbbECTmPtBDv3xft5Kl7M0xZ3ImMo3D2KifA/9dQIrHpmEz+b
	 ESn/Ytmd1O1qEzLa+16YYPHC8o/JN1AW5G0rXlXJCtLrr11J0VJBxeLRY0ok/zQlf6
	 6QGKdd9aEGddciy15l2YhwhnDD8wv0vYVswb8s8Ni1uL29wrvrUlDJm0luOjohydGI
	 h3xVsPaQHUk1tra/yPTkSxzzQBn2D/COSDnxaWHovtE0dDSRvfGPbj7Ck6ev7SrfQD
	 e7S/9YC+s+Y4fejGb5newLGjhDd11ASAYF/ABmxvOIIL8ueplsFn8qd+Gfx/g9B/e/
	 Vr+P/Ezf37i5Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7794480EC6;
	Wed, 27 Aug 2025 14:20:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 1A1EB17D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 14:20:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 00CF940C09
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 14:20:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 60TEexb8aVXt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Aug 2025 14:20:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2600:3c0a:e001:78e:0:1991:8:25; helo=sea.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7DB3440C08
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7DB3440C08
Received: from sea.source.kernel.org (sea.source.kernel.org
 [IPv6:2600:3c0a:e001:78e:0:1991:8:25])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7DB3440C08
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Aug 2025 14:20:10 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id A4F3C445DA;
 Wed, 27 Aug 2025 14:20:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BD2BC4CEEB;
 Wed, 27 Aug 2025 14:20:06 +0000 (UTC)
Date: Wed, 27 Aug 2025 15:20:04 +0100
From: Simon Horman <horms@kernel.org>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 Aleksandr.Loktionov@intel.com, przemyslaw.kitszel@intel.com,
 anthony.l.nguyen@intel.com, andrew+netdev@lunn.ch,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, decot@google.com, willemb@google.com,
 joshua.a.hay@intel.com, madhu.chittim@intel.com
Message-ID: <20250827142004.GD5652@horms.kernel.org>
References: <20250822035248.22969-1-emil.s.tantilov@intel.com>
 <20250822035248.22969-3-emil.s.tantilov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250822035248.22969-3-emil.s.tantilov@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1756304409;
 bh=j8jreN6sAvwodO50Sc+7P1ozZcsLStyigxq9QYLMboM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pBRwCZz8RdD0l6XUhKuo8UkCZkVHFnX88xxBIilcvGkf2y5NUI897x9H1f1xF98Ok
 uNBPvtixK1xheTAOcFjUhsnB7R+tSbufC3zs9VwpGmcE3O6u1AURmHLzoxtwnUBGt2
 fBQAAlYZIV18HIT5urr0gnZPQ6DNumyDafhCHrMt2kPi9Vpls3iECs30c4ITgWyTJn
 Re7NfK1HBC3k9Y6E3j6OC/oYq6HIxG2ieD6O9NRcwKK4VgtoY01LTwtkl2SWKlBmuC
 w2p6017bp2GhtKLQhEI+EQF6brxEiuhUqz857LB5eKVGMkdXteW6c2Z3lfOcwQ5aZz
 8cIOzBf4iDz8g==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=pBRwCZz8
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 2/2] idpf: fix possible race
 in idpf_vport_stop()
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

On Thu, Aug 21, 2025 at 08:52:48PM -0700, Emil Tantilov wrote:
> Make sure to clear the IDPF_VPORT_UP bit on entry. The idpf_vport_stop()
> function is void and once called, the vport teardown is guaranteed to
> happen. Previously the bit was cleared at the end of the function, which
> opened it up to possible races with all instances in the driver where
> operations were conditional on this bit being set. For example, on rmmod
> callbacks in the middle of idpf_vport_stop() end up attempting to remove
> MAC address filter already removed by the function:
> idpf 0000:83:00.0: Received invalid MAC filter payload (op 536) (len 0)
> 
> Fixes: 1c325aac10a8 ("idpf: configure resources for TX queues")
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by Joshua Hay <joshua.a.hay@intel.com>
> Reviewed-by: Chittim Madhu <madhu.chittim@intel.com>
> Signed-off-by: Emil Tantilov <emil.s.tantilov@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

