Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UI2jEP75w2klvQQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 16:06:38 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3005D327845
	for <lists+intel-wired-lan@lfdr.de>; Wed, 25 Mar 2026 16:06:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 556F660B93;
	Wed, 25 Mar 2026 15:06:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eUjrKfNHb-mT; Wed, 25 Mar 2026 15:06:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB2B66100F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774451194;
	bh=/d4Gn1kS5MGurytQaHUUdFFZv/IQSTbByU+x/UA/BgI=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=n8uE9wBqMw93fZHIMHBB1mTG7qfcOrvcEgZUvAKQc79zjY2rQ4UC8EOPcKcI/1mnV
	 thg/wJ86uIPZ5h+ZqwUGzaPExZVsvg7UyByBVtjxb9G0BxafnIp+taJjhhYgHaMplX
	 pucH/3GyR6B1jILlSkR3PFr4xtlhOtNcjUHCx8TMsOVZHXE0fVb1ZBAg8V9oZIYeV5
	 OCtOl16kOrOXkqMQEh1QbVoduenUgqyoeWViRp12nbbYGv7oqpnOtVzgsY8fC6nWnL
	 QrCJFS0Pm9u43uNmLHpb70ZuXjNY+mGadTyKFSjsBiMkN6iH2fFqAuKnXgnrklK46D
	 BfCMJ0e4KVcvg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CB2B66100F;
	Wed, 25 Mar 2026 15:06:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 696BE353
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:06:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6698581F44
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:06:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id X66mWFrWA3fA for <intel-wired-lan@lists.osuosl.org>;
 Wed, 25 Mar 2026 15:06:31 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1330; helo=mail-dy1-x1330.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org B177881F1F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B177881F1F
Received: from mail-dy1-x1330.google.com (mail-dy1-x1330.google.com
 [IPv6:2607:f8b0:4864:20::1330])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B177881F1F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 15:06:31 +0000 (UTC)
Received: by mail-dy1-x1330.google.com with SMTP id
 5a478bee46e88-2c160308a54so932725eec.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 25 Mar 2026 08:06:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774451190; x=1775055990;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/d4Gn1kS5MGurytQaHUUdFFZv/IQSTbByU+x/UA/BgI=;
 b=T5ehCVy2uvoJ7RR2TEGiUt5g6QDvZtkUFcoZ3tyUlqHN9LyMGf6pF7KOBD4nsW16af
 DbSnggHl2G9KniN1w/PmplP9aZJ9u9kEXlU8Cg2RAepJ2eFelloJZ3EjL8MnXtw2hAQA
 iOs11HfBtKUCRmMpTbo3ucO+j/Q2Tty1RgZr02LWVKdUo3wfFavPzCV40J0BPgdxKvoB
 VTLxUB8avaF2C/wr7GfMR8/puqMdk7h3LtP9XbyZJ4wIPAXff004zhJVL7YYvsYDMPSN
 QalttkxjFcHcpSqEIM100yY84KwxrcEZxpR4Wjvk0d8w5DjGr22/l5YdUap7zKC1HNT4
 Zuow==
X-Forwarded-Encrypted: i=1;
 AJvYcCUjiyPhZEpaIy5K3Ars6Tcsgw2n5GLAlF6wWVakAC7qsvCEn+1jjWanwJjS/2DZrx173UrthH/14UNfP+RrRPA=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxvLFarxfGV/EYAypKDwAsNFKqe5pWQ98yhJT8srxV6Z9L6LZ2B
 O8PouAMINmX06scewSppjKyQS2NMwCwbmV/cMMXpBsP1pb3YDBSB8Rk=
X-Gm-Gg: ATEYQzyEfACHii6MUsmulJZuhUuiDt50DmULzMt2OcedPqRRyugHhu32f8f0tzTuSoR
 2Y9uNDENRb3Nj7AWlXBZ8rtIdEphAb9lkrF6DSVVmVuLVv4kuTy6h+Pk6T43l3qRaNz9khVbepU
 xPA8bZaFrwkk8szM7i0ZFav6K/9L8Ix9BF1qE+nBIxFQOe/YHDmqoxtZRrTfwXpcJNGiMdyGxCB
 snpQefbFnCYTevxhcCyx4YitygF0t7smQNC24gNpY3oyEnNKytANCJkoaNvxzSlVliLdg5JiINO
 CwF4hFckF6DOhjD69/rI4z2wXFbqSdQv2B3sOZEy8ENZD72hDSVCOpNmtvzT+FrfepBRyASSHZX
 1XbPX6yXpTEt/bpGAJ/hISEOp82EZUgpAnSkusj9c2W9Z3b8nnHEZPXlug88tN1ZoeoRQdIUaAs
 d+0UMe5cj+neNE1MN75Kstlhq110lkG/9JNHQAcEwV+0MiLbaMDlXBr07jOBh3ujfroBgJW2oza
 OtC1U29ZhQMzRbr0A==
X-Received: by 2002:a05:7022:6984:b0:128:ca6f:adf0 with SMTP id
 a92af1059eb24-12a96e69cffmr1941893c88.17.1774451190214; 
 Wed, 25 Mar 2026 08:06:30 -0700 (PDT)
Received: from localhost (c-76-102-12-149.hsd1.ca.comcast.net. [76.102.12.149])
 by smtp.gmail.com with ESMTPSA id
 a92af1059eb24-12aa7248731sm29001c88.4.2026.03.25.08.06.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2026 08:06:29 -0700 (PDT)
Date: Wed, 25 Mar 2026 08:06:28 -0700
From: Stanislav Fomichev <stfomichev@gmail.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Stanislav Fomichev <sdf@fomichev.me>, netdev@vger.kernel.org,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 horms@kernel.org, corbet@lwn.net, skhan@linuxfoundation.org,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, saeedm@nvidia.com, tariqt@nvidia.com,
 mbloch@nvidia.com, alexanderduyck@fb.com, kernel-team@meta.com,
 johannes@sipsolutions.net, sd@queasysnail.net, jianbol@nvidia.com,
 dtatulea@nvidia.com, mohsin.bashr@gmail.com,
 jacob.e.keller@intel.com, willemb@google.com, skhawaja@google.com,
 bestswngs@gmail.com, aleksandr.loktionov@intel.com, kees@kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kselftest@vger.kernel.org,
 leon@kernel.org
Message-ID: <acP59NM6HZhV9oAe@mini-arch>
Mail-Followup-To: Stanislav Fomichev <stfomichev@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>,
 Stanislav Fomichev <sdf@fomichev.me>, netdev@vger.kernel.org,
 davem@davemloft.net, edumazet@google.com, pabeni@redhat.com,
 horms@kernel.org, corbet@lwn.net, skhan@linuxfoundation.org,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, saeedm@nvidia.com, tariqt@nvidia.com,
 mbloch@nvidia.com, alexanderduyck@fb.com, kernel-team@meta.com,
 johannes@sipsolutions.net, sd@queasysnail.net, jianbol@nvidia.com,
 dtatulea@nvidia.com, mohsin.bashr@gmail.com,
 jacob.e.keller@intel.com, willemb@google.com, skhawaja@google.com,
 bestswngs@gmail.com, aleksandr.loktionov@intel.com, kees@kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kselftest@vger.kernel.org,
 leon@kernel.org
References: <20260320012501.2033548-1-sdf@fomichev.me>
 <20260320012501.2033548-4-sdf@fomichev.me>
 <20260323162003.0d155055@kernel.org> <acLUMN1BYkIVyOk8@mini-arch>
 <20260324142114.216fcb01@kernel.org> <acMU93XN02PHmAGi@mini-arch>
 <20260324204440.1752423d@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260324204440.1752423d@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774451190; x=1775055990; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=/d4Gn1kS5MGurytQaHUUdFFZv/IQSTbByU+x/UA/BgI=;
 b=Jl42G3AKHdntIpVPcrrTYEWeMd7cLr9RoWYBH9W50P1aOq0VkjHrCOjlaS3kVw7YOk
 manR1uVnmmrtBAfC8+ptQX3prIE662eBz458ppmAtwxTJiUZGAURSW6utleryfDueQX4
 E5qUwV2EeHudC0s/m++e8lKWouD2+ge+DKAKf7CO0Cl90KilBU0SvG36ocaV8nU68jOR
 NoEQJY7/1yj1wQBWDZa71fj45ZRNPV1o9PX7ZpW+d/RWM1/ZSqmDz4EUuLl66B6QoMeR
 5kLT8sUgmAJW6UmJzCPvdfQZ/rLRCrey2f084e3t6SuSpry9roL5O9iefIWNvghc6oyd
 RrPw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=Jl42G3AK
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 03/13] net: introduce
 ndo_set_rx_mode_async and dev_rx_mode_work
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
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:aleksandr.loktionov@intel.com,m:kees@kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[stfomichev@gmail.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stfomichev@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[fomichev.me,vger.kernel.org,davemloft.net,google.com,redhat.com,kernel.org,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,gmail.com,lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 3005D327845
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 03/24, Jakub Kicinski wrote:
> On Tue, 24 Mar 2026 15:49:27 -0700 Stanislav Fomichev wrote:
> > > > Not sure why cancel+release, maybe you're thinking about the unregister
> > > > path? This is rtnl_unlock -> netdev_run_todo -> __rtnl_unlock + some
> > > > extras.
> > > > 
> > > > And the flush is here to plumb the addresses to the real devices
> > > > before we return to the callers. Mostly because of the following
> > > > things we have in the tests:
> > > > 
> > > > # TEST: team cleanup mode lacp                                        [FAIL]
> > > > #       macvlan unicast address not found on a slave
> > > > 
> > > > Can you explain a bit more on the suggestion?  
> > > 
> > > Oh, I thought it's here for unregister! Feels like it'd be cleaner to
> > > add the flush in dev_*c_add() and friends? How hard would it be to
> > > identify the callers in atomic context?  
> > 
> > Not sure we can do it in dev_xc_add because it runs under rtnl :-(
> > I currently do flush in netdev_run_todo because that's the place that
> > doesn't hold rtnl. Otherwise flush will get stuck because the work
> > handler grabs it...
> 
> I was thinking of something a'la linkwatch. We can "steal" / "flush"
> the pending work inline. I guess linkwatch is a major source of races
> over the years...
>
> Does the macvlan + team problem still happens with the current
> implementation minus the flush? We are only flushing once so only
> pushing the addresses thru one layer of async callbacks.

Yes, it does happen consistently when I remove the flush. It also
happens with my internal v4, so I need to look again at what's going on.
Not sure whether it's my internal regression or I was just sloppy/lucky
(since you're correct in pointing out that we flush only once).

Before I went down the workqueue route, I had a simple
net_todo_list-like approach: `list_add_tail` on enqueue and
`while(!list_empty) run_work()` on rtnl_unlock. This had a nice properly of
tracking re-submissions (by checking whether the device's list_head is
linked into the list or not) and it was relatively easy to do the
recursive flush. Let me try get back to this approach and see whether
it solves the flush? Not sure what wq buys us at this point.
