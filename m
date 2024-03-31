Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CE5C0893564
	for <lists+intel-wired-lan@lfdr.de>; Sun, 31 Mar 2024 20:28:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 63C88605ED;
	Sun, 31 Mar 2024 18:27:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QbE3KAoE56Pk; Sun, 31 Mar 2024 18:27:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9B142605EF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1711909676;
	bh=g9nFqd5ZPhf0MrivK8X8qxssKBX7o+CwVZoQKkpqZAE=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BcT7vhlMhTRNjYU2bHHp4msIebGUFCfp4g0oMZHOC9cplAkE8p/UW3/kywLI4Xm6z
	 OiGeoJlGyrIgc41EAr4CCFuaOEMBMU3dnD2NBf+Q6l2MuQA70V43ZKUOjqY1EYoOH8
	 SinRRadWRvpVGmOB9w0VOWEq0pBFYbA/hRWTxv/wazvt3P9HT7POZn32IpUwaFYdMT
	 rfLNVVw5QxA1mxm2GrKsB9zzGeGPmaJh1Y7WdPCjZHi1e/ZlqvxPlhvoHEzZNzhnkk
	 7mhidoIcVDIm/2k97oJajihIWhOX0/4PoelThm7AH452yT3lCktWLdzbTFJI9s5gLS
	 V5r+AJaAbNDsA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B142605EF;
	Sun, 31 Mar 2024 18:27:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 939981BF3CE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 18:27:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 79DB34050B
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 18:27:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id acs53Wp3draQ for <intel-wired-lan@lists.osuosl.org>;
 Sun, 31 Mar 2024 18:27:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2604:1380:4641:c500::1; helo=dfw.source.kernel.org;
 envelope-from=horms@kernel.org; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 7C1B9404BF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7C1B9404BF
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7C1B9404BF
 for <intel-wired-lan@lists.osuosl.org>; Sun, 31 Mar 2024 18:27:52 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6BD2760AE4;
 Sun, 31 Mar 2024 18:27:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7EF88C433C7;
 Sun, 31 Mar 2024 18:27:49 +0000 (UTC)
Date: Sun, 31 Mar 2024 19:27:47 +0100
From: Simon Horman <horms@kernel.org>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <20240331182747.GC26556@kernel.org>
References: <20240326164455.735739-1-marcin.szycik@linux.intel.com>
 <20240328173450.GH651713@kernel.org>
 <fbf9dae9-c023-4b15-b3d8-6b19240f59b0@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fbf9dae9-c023-4b15-b3d8-6b19240f59b0@linux.intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1711909671;
 bh=mqV57eRZ6VoXvr3aBmrVYg1f738OdoqmYDtIlFCSrY8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HL8hyC0WsH91RQqowJxxTGHU1PH70duMJZ96hHGu8QSp7WQbKC6XNFX4o9/PWJt8n
 pxRmcI7c9hKqMLSja7rizQVs48arwZvX3x7xBq5TmfwAbBiMkj654x47C0CBHS6BEV
 K1jVqR+FZKOp7Rb4lO4KS72T9swsVW274A4O1GM91c+Ac5F8VeW38+eUT1BmqEm0Li
 3VMR2TkFjHgp+v+03tEj5fNC4+Ox+w2XDnDq2wGGEs2DZ8sUdvcW+EdSm7xStjjg8x
 i6wT9or1a3BAT0bNEzvuOXBu5TSD3IKnPR/taVevfRKXui6Ix57VZWKH08YiIl6yXl
 i1a4R2aZbv+7Q==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=HL8hyC0W
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ice: Reset VF on Tx MDD
 event
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 pawel.chmielewski@intel.com, anthony.l.nguyen@intel.com,
 Liang-Min Wang <liang-min.wang@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Mar 29, 2024 at 12:31:58PM +0100, Marcin Szycik wrote:
> 
> 
> On 28.03.2024 18:34, Simon Horman wrote:
> > On Tue, Mar 26, 2024 at 05:44:55PM +0100, Marcin Szycik wrote:
> >> In cases when VF sends malformed packets that are classified as malicious,
> >> sometimes it causes Tx queue to freeze. This frozen queue can be stuck
> >> for several minutes being unusable. This behavior can be reproduced with
> >> a faulty userspace app running on VF.
> >>
> >> When Malicious Driver Detection event occurs and the mdd-auto-reset-vf
> >> private flag is set, perform a graceful VF reset to quickly bring VF back
> >> to operational state. Add a log message to notify about the cause of
> >> the reset. Add a helper for this to be reused for both TX and RX events.
> >>
> >> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> >> Co-developed-by: Liang-Min Wang <liang-min.wang@intel.com>
> >> Signed-off-by: Liang-Min Wang <liang-min.wang@intel.com>
> >> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> > 
> > Hi Marcin,
> > 
> > If I read this correctly then a reset may be performed for several
> > different conditions - values of different registers - for a VF
> > as checked in a for loop.
> > 
> > I am wondering if multiple resets could occur for the same VF within
> > an iteration of the for loop - because more than one of the conditions is
> > met. And, if so, is this ok?
> 
> Hi Simon,
> 
> Good point. Nothing too bad should happen, as ice_reset_vf() acquires mutex lock
> (in fact two locks), so several resets would just happen in sequence. However,
> it doesn't make much sense to reset VF multiple times, so maybe instead of issuing
> reset on each condition, I'll set some flag, and after checking all registers I'll
> trigger reset if that flag is set. What do you think?

Thanks Marcin,

FWIIW, that sounds like a good approach to me.

-- 
pw-bot: changes-requested
