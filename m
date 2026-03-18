Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIHNM271ummVdQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 19:56:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D392C1AD9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 19:56:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 520354170D;
	Wed, 18 Mar 2026 18:56:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RtaRnquc2ajt; Wed, 18 Mar 2026 18:56:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5B9A940C6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773860202;
	bh=PfderLH1PeQJs9EdZnKIFcadn6yQyUif1ZtSb/oqtWI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=hqwU4oex6fqcDwf8v4QGN/l7R/YaeHVUNhuPzg9oAakFwzNl61u2YYGSCbJggLnfE
	 DWXIhNvfZ/WsmvrxrD7uVgLfMyigNb0D+nVgRaVw5hGvTXwtyRBc/cHML2F4URgu49
	 oBWmn/bPgr9nyvGqt33A308EzVoj7kJvHZvJcbqW9FqYTShKmYRDb1U+9MvUqH/nxv
	 Oyi5WHSHE6hFt9TZ2McLEhFPdtm/ZoeBe9gOhcmN6jrRRw06/Sdx9CU8IOYGwVcNt5
	 vm0NRG55LGfBmXz7CVQ9CiHoPGhj/ibwNqEKQHqeeKD9g5eUxNBRemWNh4dnkX7BOr
	 YM7w6/vqBkPuA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B9A940C6B;
	Wed, 18 Mar 2026 18:56:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 8D0371B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 18:56:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 724EA404AC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 18:56:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oE2YFxewWwbO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 18:56:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=49.212.198.91;
 helo=www2881.sakura.ne.jp; envelope-from=kohei@enjuk.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1EC4B40494
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1EC4B40494
Received: from www2881.sakura.ne.jp (www2881.sakura.ne.jp [49.212.198.91])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1EC4B40494
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 18:56:39 +0000 (UTC)
Received: from x1 (122.24.31.150.dy.iij4u.or.jp [150.31.24.122])
 (authenticated bits=0)
 by www2881.sakura.ne.jp (8.16.1/8.16.1) with ESMTPSA id 62IIuJEi017320
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Thu, 19 Mar 2026 03:56:20 +0900 (JST) (envelope-from kohei@enjuk.jp)
Date: Thu, 19 Mar 2026 03:56:19 +0900
From: Kohei Enju <kohei@enjuk.jp>
To: Alexander Lobakin <aleksander.lobakin@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>,
 Jacob Keller <jacob.e.keller@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>,
 nxne.cnse.osdt.itp.upstreaming@intel.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <abrzq5_S7p-YjqhE@x1>
References: <20260318163505.31765-1-aleksander.lobakin@intel.com>
 <20260318163505.31765-4-aleksander.lobakin@intel.com>
 <abripOPt4oVu-Ksb@x1>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <abripOPt4oVu-Ksb@x1>
X-Mailman-Original-DKIM-Signature: a=rsa-sha256;
 bh=PfderLH1PeQJs9EdZnKIFcadn6yQyUif1ZtSb/oqtWI=; 
 c=relaxed/relaxed; d=enjuk.jp;
 h=From:Message-ID:To:Subject:Date;
 s=rs20251215; t=1773860181; v=1;
 b=K0asMe8Bso9Ms0gHC0knLQXE0V905i2fkm+90GcE7+0yepNdl+XmgToKCnGULFcJ
 ng37HOG9o0RqNOvcPHe6FxthSU0ruaSbaOjTjMWc6jrup+ZIuI5+P+nyICZdi8sC
 8uZnLzl58iIgVwVI66oBM6DRvEZrr2hhYnj5fQgAwphdIhNwZT14odCzsFkCLInS
 oZI+yZOjHQqgoWPmT/GG44VKldi9ne0pvv5vaH7TjZZXOhAGgQhE7Wr0QL7Gz4Ov
 XOkoPceBg7+z2T0C/ooHjZexfYMZyTVdZxMDVKuuq9eDwpI/YPqpjGg3cYxrx43k
 V7HbXxXEhU9UckYddlT9eQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=enjuk.jp
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=enjuk.jp header.i=@enjuk.jp header.a=rsa-sha256
 header.s=rs20251215 header.b=K0asMe8B
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_SENDER(0.00)[kohei@enjuk.jp,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	ARC_NA(0.00)[];
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
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: D6D392C1AD9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 03/19 02:55, Kohei Enju wrote:
> On 03/18 17:35, Alexander Lobakin wrote:
> > Queue management ops unconditionally enable netdev locking. The same
> > lock is taken by default by several NAPI configuration functions,
> > such as napi_enable() and netif_napi_set_irq().
> > Request ops locking in advance and make sure we use the _locked
> > counterparts of those functions to avoid deadlocks, taking the lock
> > manually where needed (suspend/resume, queue rebuild and resets).
> 
> Hi Alexander,
> After applying this patch (3/5) along with the preceding ones on top of
> net-next, I got some WARNING splats when changing the admin state
> (up/down) using the ip link command. [1, 2]
> 
> Since I haven't looked into this series in detail, I'm reporting the
> splats anyway. 
> I'm wondering why I haven't seen anyone report this type of issue up to
> v3. Maybe there is something wrong with my setup or devices?
> 
> Device: Intel Corporation Ethernet Controller E810-XXV for SFP (rev 02)

Ah, I think I figured out the reason. My adapter accidentally fell into
safe mode. When the adapter is in the safe mode, netdev->queue_mgmt_ops
== NULL and netdev->request_ops_lock == false, so
netdev_assert_locked_or_invisible() complains about not holding the
netdev lock.

Setting netdev->request_ops_lock = true in the safe mode path also
worked fine for me.

---
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 9ef258d5ab48..3477c53316ba 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3519,6 +3519,7 @@ static void ice_set_ops(struct ice_vsi *vsi)

        if (ice_is_safe_mode(pf)) {
                netdev->netdev_ops = &ice_netdev_safe_mode_ops;
+               netdev->request_ops_lock = true;
                ice_set_ethtool_safe_mode_ops(netdev);
                return;
        }
