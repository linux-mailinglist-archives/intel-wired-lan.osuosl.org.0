Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0806EFF6D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Apr 2023 04:46:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F147683C52;
	Thu, 27 Apr 2023 02:46:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F147683C52
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682563593;
	bh=i8xAfEKdNeEZ6pML5FzSu4jIzz6DpLsi5le1NzyIx8g=;
	h=Date:From:To:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=3rOzXfkK6n2JqspY+JBrC1FFSN98s0/SNlSTLpkuu0kDPSG/zKGy+ZzE6e8yNaKUG
	 aBsUFS8d9+ymAq67l24QHVfkhyRrirTwf53jtoT0t2jI4F0IHxW+pE2ZPrZhcX0o4G
	 JhRCTS+dqjqP5XWnFxwrWHLjlhkz5T5Ec+T1rqEXZ4X4r9zagDCQvN/eYsFf1u98Wc
	 W0KCFr9S8Kz5bbF0PvUwY8m0nioq2kGkDYRHWagmfws0w6egD0lWyS8hds4bqqVYXx
	 HM4/z2+7cez5elnIesi+y7/GwACGCpcpnFiOOcsprxZVfacJ+mm2SW5iafrilwsK7Z
	 RQc7Qj85TpcSg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kwfPRz_fUpnT; Thu, 27 Apr 2023 02:46:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D045583C8A;
	Thu, 27 Apr 2023 02:46:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D045583C8A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DDD101BF5AA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 02:46:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B445E41E72
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 02:46:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B445E41E72
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id onLXwZxHdvQ8 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Apr 2023 02:46:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7DAC41E7D
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B7DAC41E7D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Apr 2023 02:46:26 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 99950617E7;
 Thu, 27 Apr 2023 02:46:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 396A7C433EF;
 Thu, 27 Apr 2023 02:46:24 +0000 (UTC)
Date: Wed, 26 Apr 2023 19:46:23 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Emil Tantilov <emil.s.tantilov@intel.com>
Message-ID: <20230426194623.5b922067@kernel.org>
In-Reply-To: <20230427020917.12029-1-emil.s.tantilov@intel.com>
References: <20230427020917.12029-1-emil.s.tantilov@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1682563585;
 bh=M1Kd7aHQUwTTcyEbRsGACt25xZGRn1jb3Q4esIiyEPs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SeCkq1bWlHaZQRVhChoh/ml2K9AgAYMArGfivNBMgAdSOigkmGEfmqxexn+wRIOqy
 KLpb/MGO/9ReC6WTUuMo6VmLFA/Qce1YmLTu5DWD+o56ImBJeg16kP6MbFUNXvvcDs
 zpBoM7H5c4Og4oMB8VHTkfHutQecRDWrh1xHGODvNbdtrwTXO6JEDllkMRS3P9mOhA
 50vpP2ERa1UTdIYjwBR+ASERwS1ZfA3Yk0q/Sd+XCwI9eb18EtTcW/UA2jlvT7OFjM
 IBf/c9zk/OomLt9RkKrIzs1Az/CjZdeC+e/hFWFmm3hZygO90SRjqw7gDAhRQUNEPn
 UMhQLMn+xhIyQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=SeCkq1bW
Subject: Re: [Intel-wired-lan] [net-next v3 00/15] Introduce Intel IDPF
 driver
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
Cc: willemb@google.com, pabeni@redhat.com, leon@kernel.org,
 shailendra.bhatnagar@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, edumazet@google.com, anthony.l.nguyen@intel.com,
 simon.horman@corigine.com, intel-wired-lan@lists.osuosl.org,
 phani.r.burra@intel.com, decot@google.com, davem@davemloft.net,
 shannon.nelson@amd.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, 26 Apr 2023 19:09:02 -0700 Emil Tantilov wrote:
> This patch series introduces the Intel Infrastructure Data Path Function
> (IDPF) driver. It is used for both physical and virtual functions. Except
> for some of the device operations the rest of the functionality is the
> same for both PF and VF. IDPF uses virtchnl version2 opcodes and
> structures defined in the virtchnl2 header file which helps the driver
> to learn the capabilities and register offsets from the device
> Control Plane (CP) instead of assuming the default values.

This is not the right time to post patches, see below.

Please have Tony/Jesse take over posting of this code to the list
going forward. Intel has a history of putting upstream training on
the community, we're not going thru this again.


## Form letter - net-next-closed

The merge window for v6.3 has begun and therefore net-next is closed
for new drivers, features, code refactoring and optimizations.
We are currently accepting bug fixes only.

Please repost when net-next reopens after May 8th.

RFC patches sent for review only are obviously welcome at any time.

See: https://www.kernel.org/doc/html/next/process/maintainer-netdev.html#development-cycle
-- 
pw-bot: defer

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
