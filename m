Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D989A4C0D
	for <lists+intel-wired-lan@lfdr.de>; Sat, 19 Oct 2024 10:35:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AD67640147;
	Sat, 19 Oct 2024 08:35:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OebbSYazCgYh; Sat, 19 Oct 2024 08:35:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B32E14015D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729326912;
	bh=sfaJI7Q3jUpmg7mJlrNH8TJPPJ+9An/y2xPA22v333A=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=yjPnOaqZNmxMPmg6BUg0Wrh7QIowreup3yYF8ssd7uk+q+mD+CaUT05RIs4KiHKLc
	 gtRQZ4HHT/zlGzhvR8hS6G+oRrz0K/s2w73VZGpRbrdDl250H1lkV09goexpx4vcVW
	 cvOcdhxfBOO2kXNFa9Sq2BqV51/X/xWMZ2mhdswKki0Uwsqd3VKnWvYTif3p9zxJlq
	 5S6NISp78tbPe8/sd0LX3ofiW74wpGlDhUso3qLtC2cfKSc3SxHuyUknPUKsLtKqSz
	 vy4S2iZAunqIrRMr+DCboUivxMY04Eri/vbmYHuSvOSCnja+0u76QRgk9M+do5OltA
	 NQJrCpqW2o3sg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id B32E14015D;
	Sat, 19 Oct 2024 08:35:12 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id DB7033A23
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Oct 2024 08:35:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B4D2E60664
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Oct 2024 08:35:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id uYB79uekbxpu for <intel-wired-lan@lists.osuosl.org>;
 Sat, 19 Oct 2024 08:35:09 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=147.75.193.91;
 helo=nyc.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 09BD560655
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 09BD560655
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 09BD560655
 for <intel-wired-lan@lists.osuosl.org>; Sat, 19 Oct 2024 08:35:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id A27F9A40295;
 Sat, 19 Oct 2024 08:34:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 26E96C4CEC5;
 Sat, 19 Oct 2024 08:35:04 +0000 (UTC)
Date: Sat, 19 Oct 2024 09:35:02 +0100
From: Simon Horman <horms@kernel.org>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>,
 Paul Greenwalt <paul.greenwalt@intel.com>,
 Dan Nowlin <dan.nowlin@intel.com>, Ahmed Zaki <ahmed.zaki@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com>
Message-ID: <20241019083502.GJ1697@kernel.org>
References: <20241018141823.178918-4-przemyslaw.kitszel@intel.com>
 <20241018141823.178918-5-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241018141823.178918-5-przemyslaw.kitszel@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1729326907;
 bh=3ZIoAZEktoA7w0nBDMntwdncGqIx5+VOLWZqNtfh+lU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jZCbiD/CWrjaFh3A+6YiAVdUcIgIO1qUqpzP3gxIrTBkkDgzuDMTL6X0ZI3Go4Zf6
 snrGRWIklycw7eCZprlBwQpsITgSOhrOl0rFepM03ZUacXgDPxdiJvArXCLmL4lrS6
 ddTPXcs1omo4PfF3/d33EHRx8qN74w0aYUSz+aX7rl74jydjhlriwPEkKYMnszl/uY
 58iSJZTHVuMnmpWwrL9e3LhsoMwgx7m3mQvsftz+lCOhipLIlUajAXu/JIRt3P6dOW
 XbA2Mv/eYak3Tr6P5BEzOYq6wZLrJCbd8NCSj5AaHpYmaYffPKE17XOYTy9fRk/l3T
 jz9lDBTNha7Ng==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=jZCbiD/C
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 1/2] ice: refactor "last"
 segment of DDP pkg
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

On Fri, Oct 18, 2024 at 04:17:36PM +0200, Przemek Kitszel wrote:
> Add ice_ddp_send_hunk() that buffers "sent FW hunk" calls to AQ in order
> to mark the "last" one in more elegant way. Next commit will add even
> more complicated "sent FW" flow, so it's better to untangle a bit before.
> 
> Note that metadata buffers were not skipped for NOT-@indicate_last
> segments, this is fixed now.
> 
> Minor:
>  + use ice_is_buffer_metadata() instead of open coding it in
>    ice_dwnld_cfg_bufs();
>  + ice_dwnld_cfg_bufs_no_lock() + dependencies were moved up a bit to have
>    better git-diff, as this function was rewritten (in terms of git-blame)
> 
> CC: Paul Greenwalt <paul.greenwalt@intel.com>
> CC: Dan Nowlin <dan.nowlin@intel.com>
> CC: Ahmed Zaki <ahmed.zaki@intel.com>
> CC: Simon Horman <horms@kernel.org>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
> git: --inter-hunk-context=6
> 
> v3: added ice_ddp_send_ctx_set_err() to avoid "user" code setting
>     the ctx->err directly, fix kdoc warnings, removed redundant
>     assignement, typo fix, all thanks to Simon
> v2: fixed one kdoc warning

Thanks for the updates.

Reviewed-by: Simon Horman <horms@kernel.org>

