Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4684E93915B
	for <lists+intel-wired-lan@lfdr.de>; Mon, 22 Jul 2024 17:06:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 93C6E605C7;
	Mon, 22 Jul 2024 15:06:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5o0DvaVzXzUo; Mon, 22 Jul 2024 15:06:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7553D605A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1721660790;
	bh=5aufD8IESBPqbyVIxaBhNGWvzxZTWMycbfbk9XFm8x0=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=29AZv2nogxgmb9GhYvs39MAJQoKUm5RzwHntV1PjbXUQrjJLShZvvEg+adzxNAe8B
	 dWVsWIn5qXQ2KQUJVUu/9zt+xkK1gmtbAspmcQ3cvqP363eWRPBisQw3E93izJSUcz
	 5q9gKEkrtcli4/clSM+EczDJlUjbpUDbTCvckWaeoXrLgbhavR360oAEG/aW7lrQng
	 pWyBFLWZioHo711C9qKFATVhxgKEu/2vmWEtpMntvPa68JHgF5MZePCZbseKIMkv0Z
	 KWPORkK5ANoP8p8eRHcbXKGpA55cpA2URBX329UBAyxTcAGHFOZc89v3EaaRfVtgkU
	 CTHD8iZevnnBQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7553D605A9;
	Mon, 22 Jul 2024 15:06:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D7C2D1BF31D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:06:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D1130404C2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:06:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 11ngHuhyHs9Y for <intel-wired-lan@lists.osuosl.org>;
 Mon, 22 Jul 2024 15:06:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=145.40.73.55;
 helo=sin.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org DB45D40448
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DB45D40448
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DB45D40448
 for <intel-wired-lan@lists.osuosl.org>; Mon, 22 Jul 2024 15:06:27 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sin.source.kernel.org (Postfix) with ESMTP id D0318CE0ACA;
 Mon, 22 Jul 2024 15:06:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6A4FFC116B1;
 Mon, 22 Jul 2024 15:06:23 +0000 (UTC)
Date: Mon, 22 Jul 2024 16:06:21 +0100
From: Simon Horman <horms@kernel.org>
To: Ahmed Zaki <ahmed.zaki@intel.com>
Message-ID: <20240722150621.GN715661@kernel.org>
References: <20240710204015.124233-1-ahmed.zaki@intel.com>
 <20240710204015.124233-5-ahmed.zaki@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240710204015.124233-5-ahmed.zaki@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1721660785;
 bh=eV6SBkcdq2vIP50+6k2wI6mdmx1QIj4OyeeqnK205Qk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YxhJhFkbDWEMY4B2HRNKw/Y1iNBD2CWOeLtDdwyB2SX/ipGU+FQAVTO0ylQ38H7f7
 49udyczUKLb3ZWXb6kYvGzZtn/U+WCWlzewlEIIz4kFsWmmbC+hgy/qUCWJ+0OJnhW
 l736fmIlVpcrr+ukmA7oUPsVVi7FoX5DjGrNy4CNuqZVD6D5E4TaVqpq4eOyG4fjeT
 6KbP4urbMh+K9tP9vbVdsq0VMjZTgBK85Cx1M4Mecfvex7mbQx7uyQ+XZERIwv0qcE
 u1PJiy2ZpLTdNE13M1/QvOMWl4Ke7cX2JXIQkgHVZAucPA5MSlpFU0NAVazUNQDnJ+
 Ams0BMPY4tuaA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256
 header.s=k20201202 header.b=YxhJhFkb
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3 04/13] ice: add parser
 internal helper functions
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>,
 Junfeng Guo <junfeng.guo@intel.com>, netdev@vger.kernel.org,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, anthony.l.nguyen@intel.com,
 intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jul 10, 2024 at 02:40:06PM -0600, Ahmed Zaki wrote:
> From: Junfeng Guo <junfeng.guo@intel.com>
> 
> Add the following internal helper functions:
> 
> - ice_bst_tcam_match():
>   to perform ternary match on boost TCAM.
> 
> - ice_pg_cam_match():
>   to perform parse graph key match in cam table.
> 
> - ice_pg_nm_cam_match():
>   to perform parse graph key no match in cam table.
> 
> - ice_ptype_mk_tcam_match():
>   to perform ptype markers match in tcam table.
> 
> - ice_flg_redirect():
>   to redirect parser flags to packet flags.
> 
> - ice_xlt_kb_flag_get():
>   to aggregate 64 bit packet flag into 16 bit key builder flags.
> 
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Qi Zhang <qi.z.zhang@intel.com>
> Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> Signed-off-by: Ahmed Zaki <ahmed.zaki@intel.com>

Reviewed-by: Simon Horman <horms@kernel.org>

