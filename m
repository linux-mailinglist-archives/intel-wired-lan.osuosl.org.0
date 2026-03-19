Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8FoxEGs7vGl3uwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 19:07:39 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B24932D08C4
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 19:07:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65C198410A;
	Thu, 19 Mar 2026 18:07:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cVMhUfocAwrX; Thu, 19 Mar 2026 18:07:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6E6A840F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773943656;
	bh=MMmXS5usa/DDMyie4xfZBHeyrs8qMgKjI/oEAFpaaFs=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=69PlxW2BRQBQewaNwx8Tq4C7UOTfqGojcCemvlIFHTxfVUFVUHwGPPfZxxzRcZ1V4
	 wEec2ZUp7IHR0j4/AZOtAYyWwdBn54dL4Mh+YhlP+GdVRk5clc0yOiMAJt06YZPJbs
	 G2Lyse3da4ZctUeixIWPpbxXKuDKbBh9+wTzrDK40BgtJVxcTcTKzk8XzlRVjf8sE+
	 pNLGYqH98yIBPjm+EFIORDV45Y2V/EAk9ujzsZNlVFotXZMxk7Jtp/q/7webMa0fN9
	 KE3Pg7XLXr4/DwYX45DP+LaNpAw8dq/o2aSKSWl+hedhyEHlL+bao0/a2wxEbCdz/T
	 afC8/69d0vVKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id D6E6A840F2;
	Thu, 19 Mar 2026 18:07:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id C2E53265
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 18:07:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B479D60B3E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 18:07:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GuN0BTWrOKxI for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 18:07:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=172.234.252.31;
 helo=sea.source.kernel.org; envelope-from=horms@kernel.org;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B17C460B38
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B17C460B38
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B17C460B38
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 18:07:33 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 46D094171C;
 Thu, 19 Mar 2026 18:07:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD492C19424;
 Thu, 19 Mar 2026 18:07:30 +0000 (UTC)
Date: Thu, 19 Mar 2026 18:07:27 +0000
From: Simon Horman <horms@kernel.org>
To: Petr Oros <poros@redhat.com>
Cc: netdev@vger.kernel.org, jacob.e.keller@intel.com,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, linux-kernel@vger.kernel.org
Message-ID: <20260319180727.GR1753385@horms.kernel.org>
References: <20260316104209.1285962-1-poros@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260316104209.1285962-1-poros@redhat.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=kernel.org; s=k20201202; t=1773943653;
 bh=9/v9OP+6OoUAkiwOeDU2rKV1U3W0BWlpsm/v5xokvz0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cXyPtihU0kjoUTzPRkOuvJzwKE+bvWJ4WSA1BN674OWWgMSbd+2Tvj9p95JiQ3Bn5
 yA6QKyNWADA9xziy1CjoborO+zXGyViz+mWIuYLJrWnqXgAzLIu8z+SUaWsSGsw2KA
 lvUdrp4UrBSF7K4auaKuo4P+VxzrGs6BrIvZct0lgHqLL52g9F2ZFjAxKnW3lHLrZp
 6HR3h1AAOtCz10CJ3UB0twbZZ5lFDZOObQJwQVE8U9LJipcrK2EbQ1GJSkA/XzDO2w
 jbyQ1M7Nq49+BFgGqG9GWA9KkeptkaNR1LAp+GGnD37b4gGelx/53gkmD9IVD2/SD0
 KFrNKnbb4Jc0w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=kernel.org
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=cXyPtihU
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 0/4] iavf: fix VLAN filter
 state machine races
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
X-Spamd-Result: default: False [2.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,horms.kernel.org:mid,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:poros@redhat.com,m:netdev@vger.kernel.org,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B24932D08C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 11:42:05AM +0100, Petr Oros wrote:
> The iavf VLAN filter state machine has several design issues that lead
> to race conditions between userspace add/del calls and the watchdog
> task's virtchnl processing.  Filters can get lost or leak HW resources,
> especially during interface down/up cycles and namespace moves.
> 
> The root problems:
> 
> 1) On interface down, all VLAN filters are sent as DEL to PF and
>    re-added on interface up.  This is unnecessary and creates multiple
>    race windows (details below).
> 
> 2) The DELETE path immediately frees the filter struct after sending
>    the DEL message, without waiting for PF confirmation.  If the PF
>    rejects the DEL, the filter remains in HW but the driver lost its
>    tracking structure.  Race conditions between a pending DEL and
>    add/reset operations cannot be resolved because the struct is gone.
> 
> 3) VIRTCHNL_OP_ADD_VLAN (V1) had no success completion handler, so
>    filters stayed in IS_NEW state permanently.

...

> This series addresses all three issues:
> 
> Patch 1 renames IS_NEW to ADDING for clarity.
> 
> Patch 2 removes the DISABLE/INACTIVE state machinery so VLAN filters
> stay ACTIVE across down/up cycles.  This is the core behavioral
> change -- VLAN filters are no longer sent as DEL to PF on interface
> down, and iavf_restore_filters() is removed since there is nothing
> to restore.
> 
> Patch 3 adds a REMOVING state to make the DELETE path symmetric with
> ADD -- filters are only freed after PF confirms the deletion.  If the
> PF rejects the DEL, the filter reverts to ACTIVE instead of being
> lost.
> 
> Patch 4 hardens the remaining race windows: adds V1 ADD success
> handler and prevents redundant DEL on filters already in REMOVING
> state.

For the series:

Reviewed-by: Simon Horman <horms@kernel.org>

