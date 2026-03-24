Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iOY4FzPFwmmIlgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 18:09:07 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53645319BE2
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 18:09:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB4F54108C;
	Tue, 24 Mar 2026 17:09:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hg6HX-izOYPZ; Tue, 24 Mar 2026 17:09:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 35B4D4108A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774372144;
	bh=jyHsLzXWaR2zRPbZGuPTHNB97BRLzepDzCHvvesUcbY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hNNF5sm/7ByPjn/Tx1oQI2tIoiFHYSNE9YvV6cqMlQARFlF2fsD49M7W6ZSRA2WCR
	 9FgqmH5Wf2+7pv/ZxJk43CfKVwv3mHSSPVQ7EWPOIAO1nxuh5oS9lkVEZQZKLXRJiO
	 mgWuaJQi5TCqcXGMdtJkr8YX45Eei/ozpO4oVjMEGjwWBdhe9kfRREdnEUIo/8ynTk
	 Jmig474c2SOl5L1GYVMQ7uZaBR1tV5RgmvRVpT4Ym9dhCU4uVnkH8BiIj8n+R97e9A
	 XEuhWNa4ZDqqspICo5sn9VAOjceuQAsCGJB+WkMHsy7+3OpuoJJNk0oILUGK4FmqB6
	 Jbyn+VrjWq6+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 35B4D4108A;
	Tue, 24 Mar 2026 17:09:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 77A41353
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 17:09:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D53881F43
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 17:09:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rpd189-JUZvh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 17:09:01 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 4CED081B6D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CED081B6D
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4CED081B6D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 17:09:00 +0000 (UTC)
Received: from x1 (39.25.31.150.dy.iij4u.or.jp [150.31.25.39])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 62OH8Sa1000982
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 25 Mar 2026 02:08:29 +0900 (JST) (envelope-from kohei@enjuk.jp)
Date: Wed, 25 Mar 2026 02:08:28 +0900
From: Kohei Enju <kohei@enjuk.jp>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <acLExfyijq7HCEc4@x1>
References: <20260318163505.31765-1-aleksander.lobakin@intel.com>
 <20260318163505.31765-4-aleksander.lobakin@intel.com>
 <abripOPt4oVu-Ksb@x1> <abrzq5_S7p-YjqhE@x1>
 <1ec79e7b-50e8-4c64-9e79-fc377a505cfa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1ec79e7b-50e8-4c64-9e79-fc377a505cfa@intel.com>
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=jyHsLzXWaR2zRPbZGuPTHNB97BRLzepDzCHvvesUcbY=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1774372110; v=1;
 b=JBlhowD/CR2vejrT+7U7Cxl5IYnPvFmZUiK3tbHfRagOgB7FoVa9MJ1xWBUGSHSd
 XTmWEs4NUzP3MSUn6swQFFM/wTR2uEXrAWQ4T8iMTELmZHefn6IBOGcOpz4lN1fu
 kPHcrgUMksSyFYHPatAhihvA1svL11+70oA+Q0M4ug8s73eq/zSlofVTBpryBTU2
 zLNmzNOW3yUp7Mowq1Yp/GACjryfTfwGEW0FTrgyREkCdInBpNQHieprh18+E95q
 P6u2VY9EQVIaJR4eIUlQLMgOL032xdm/2iFg4fDean0qnDnkwE5NIoieYHPhf06x
 R3lKQMhBZL3lgf7Uu5uEew==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=JBlhowD/
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 3/5] ice: migrate to
 netdev ops lock
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
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[enjuk.jp : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksander.lobakin@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:jacob.e.keller@intel.com,m:aleksandr.loktionov@intel.com,m:nxne.cnse.osdt.itp.upstreaming@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[enjuk.jp:email];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 53645319BE2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 03/24 17:56, Alexander Lobakin wrote:
> From: Kohei Enju <kohei@enjuk.jp>
> Date: Thu, 19 Mar 2026 03:56:19 +0900
> 
> > On 03/19 02:55, Kohei Enju wrote:
> >> On 03/18 17:35, Alexander Lobakin wrote:
> >>> Queue management ops unconditionally enable netdev locking. The same
> >>> lock is taken by default by several NAPI configuration functions,
> >>> such as napi_enable() and netif_napi_set_irq().
> >>> Request ops locking in advance and make sure we use the _locked
> >>> counterparts of those functions to avoid deadlocks, taking the lock
> >>> manually where needed (suspend/resume, queue rebuild and resets).
> >>
> >> Hi Alexander,
> 
> 
> Uff, sorry, I didn't notice this thread for some reason. Maybe it landed
> into the IWL folder in my mail client and I haven't checked it for some
> time... But I read LKML online on a daily basis and missed this reports =\

NP, thanks for taking a look!

Regards,
Kohei

> 
> >> After applying this patch (3/5) along with the preceding ones on top of
> >> net-next, I got some WARNING splats when changing the admin state
> >> (up/down) using the ip link command. [1, 2]
> >>
> >> Since I haven't looked into this series in detail, I'm reporting the
> >> splats anyway. 
> >> I'm wondering why I haven't seen anyone report this type of issue up to
> >> v3. Maybe there is something wrong with my setup or devices?
> >>
> >> Device: Intel Corporation Ethernet Controller E810-XXV for SFP (rev 02)
> > 
> > Ah, I think I figured out the reason. My adapter accidentally fell into
> > safe mode. When the adapter is in the safe mode, netdev->queue_mgmt_ops
> > == NULL and netdev->request_ops_lock == false, so
> > netdev_assert_locked_or_invisible() complains about not holding the
> > netdev lock.
> > 
> > Setting netdev->request_ops_lock = true in the safe mode path also
> > worked fine for me.
> > 
> > ---
> > diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
> > index 9ef258d5ab48..3477c53316ba 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_main.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> > @@ -3519,6 +3519,7 @@ static void ice_set_ops(struct ice_vsi *vsi)
> > 
> >         if (ice_is_safe_mode(pf)) {
> >                 netdev->netdev_ops = &ice_netdev_safe_mode_ops;
> > +               netdev->request_ops_lock = true;
> 
> This fix looks good to me, thanks!
> 
> >                 ice_set_ethtool_safe_mode_ops(netdev);
> >                 return;
> >         }
> 
> Tony, could you please pick it up to patch 3/5 when sending a new PR?
> 
> Thanks,
> Olek
