Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CD6dFwAVw2lCoAQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 23:49:36 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C37F31D726
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 23:49:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 766416109A;
	Tue, 24 Mar 2026 22:49:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DZ4rv91mg2kC; Tue, 24 Mar 2026 22:49:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E01B2610AA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774392571;
	bh=gNx1VzVQBg2bGT4I9Bs+XmhXlek+bgkFq6Ick2G8sfw=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=tjHefqkxoMhw21Wu2daeMpDN8ctMUWMpCq3kJMZDoLfkfvLZzRIw0vxYH7Er0Z3vT
	 0jSRxd1NdcsdkoUGNwTPJfbqNfP+qR9b2qQTIhrQ36EZpQjR2rV3tiIe3OMsDT6LLi
	 lKkLRwyg2paMBr9fUAPlu1yXN/eTaRpwP98EpSOnclijgBt4X8VkMcKiU5Gj9IzBdo
	 lXWwTo1P445zI2+7BIY5VxZVd+/m1ClveUxH/cr8MefK2pUGAMDbZR20I28qsWGIU/
	 VQJmjPXbdiMFAh1DgK+o1Ugpds6H6P7uai/U7DT62FFCsnteVYmFDd1zKP79g7JO6r
	 Rr7TDfpLRCHlw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E01B2610AA;
	Tue, 24 Mar 2026 22:49:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B30791D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 22:49:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8F77F40A24
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 22:49:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nePLjb6JN3yw for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 22:49:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1334; helo=mail-dy1-x1334.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D8C7F40012
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D8C7F40012
Received: from mail-dy1-x1334.google.com (mail-dy1-x1334.google.com
 [IPv6:2607:f8b0:4864:20::1334])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D8C7F40012
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 22:49:29 +0000 (UTC)
Received: by mail-dy1-x1334.google.com with SMTP id
 5a478bee46e88-2b6b0500e06so7119325eec.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 15:49:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774392569; x=1774997369;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=gNx1VzVQBg2bGT4I9Bs+XmhXlek+bgkFq6Ick2G8sfw=;
 b=ij0rYOzHP6Mg+R47g7InCgcypTtxH3tEzV1Pbb3HfbcMLd7balL+jY2Th0Fh9cW2v6
 VbDjay7Mqj2C/iNLNVR/WjV8f2RBLvtSbluhFIh7/c3BQYj+mY8shvF2nDNPNWeKwwrU
 M6siYfIXxpXQjV9Y5cC9jvnAIWsg/V3IPaH0+6dLjfNUQxiHRef7dlfYP6PSde9SNn+p
 hYkO5zRym4zCZBgX1vQLvgRi133RHbIwknZOfY4V+MzpDmiRGOvFqLvySrgSxJk059ki
 dkUxQOTfPC8yytEXc47SQdOkqpedLOFeOreGOrkaNLPP2Zu2toe90zNuJDVxeRKykZUa
 2RBA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUJgTcU9SIAiTTIGgpRq14b7PQWGKKCdNr6PvPYo+HxNXWGRr7l6S10pSMkqGuQcgMfE7+exq6FzJ0vPMZBrbw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxR8V3+gNhtKDEXtcgu22RxWHx4x9T6X8RmgHd22MsCLnGstIpe
 eZ0rJ0STmBixbjh7G/8pZDLOhNJmjLVfYG3tlOXmb/RiaKWwqpUSNYA=
X-Gm-Gg: ATEYQzzuC29jm6JxB/ReEsmQwh7LcGnku2ypSBbSF8mp6y1g+36vM0fNGq+9G1w914S
 g1BkWgaZWi0fSI4rA+IpU1fux8Hw8nO/w73ut6U5RgfYubbdaZ82a9tPPOFdMgXXFGwGhuh8QcU
 2cm98id0XpDygw8YDkT8wxVyDl8Dp1YpahWNouOA7kAZMZZlgNu48up41aMhY5oPtdgyN0xWKrR
 VtH9Di5zJ68HquNFzz8GvBjNTfl47LDGMJpE7YJFoLfGY+F5YswzTBDmXdIDZH3CjDMiyvnLXuA
 sP2z7qhIHX5m/Ms7jroh3iWgUdQ7CSed0uGen8rUT88S/Sv5XqCe0+b50BJTBaKIRBnHCXRex99
 T5hclc5Iv35ove7itUHV9ZgFKc+qLOuS/1xv2T5nSDKNA7SnQ7ZqjLM8h3CWQNqBvVsFbLMEW4A
 4xfiPARqppm53DYA0JOd6xE9mBGy+dAbMg+PJngL/BRNTCGJXtW9fnX/zAOMgN+pSXbJw+oDwfg
 L9n/lYfSCdWIO0CjcZmXZSCjc3Z
X-Received: by 2002:a05:7301:6582:b0:2c1:2999:498e with SMTP id
 5a478bee46e88-2c15d3a1176mr717588eec.18.1774392568523; 
 Tue, 24 Mar 2026 15:49:28 -0700 (PDT)
Received: from localhost (c-76-102-12-149.hsd1.ca.comcast.net. [76.102.12.149])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2c10b1961a2sm16796758eec.12.2026.03.24.15.49.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2026 15:49:28 -0700 (PDT)
Date: Tue, 24 Mar 2026 15:49:27 -0700
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
Message-ID: <acMU93XN02PHmAGi@mini-arch>
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
 <20260324142114.216fcb01@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260324142114.216fcb01@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774392569; x=1774997369; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=gNx1VzVQBg2bGT4I9Bs+XmhXlek+bgkFq6Ick2G8sfw=;
 b=SxBluA4DubL9Brack1Dwc7bXRzBx7WB7Wk9xzBp8DJi3jxkuAsrzAFIC/Ak1gPFIr5
 l3TDqsuqmCcAFeM/qv1xq1h7BnaiVio/r18sttNbKk9MOBNJdQcuPDYJZ9Rg6oYY7Qls
 ZI9/Yqoi1JAkWdu8ybIP2G2PtZM4AN1l4xiUT9j0ZowyB7ZeUFkP9RWn5wwq1fTVpiGd
 DDRcVTK2tcfhbJ3Qu1yHe6+KA6YqmtxffOeoZMgt8ndo0321QuApGgvlcd0X9P76UDyR
 Wxa+1baDIxmWbJu1Ib+q9BEMst3vA03MefcmLnrv7bRHx/S6aEJbTuDA0ZoDQ9JwqD5c
 y8Og==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=SxBluA4D
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
X-Spamd-Result: default: False [1.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:aleksandr.loktionov@intel.com,m:kees@kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim];
	FORGED_SENDER(0.00)[stfomichev@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[fomichev.me,vger.kernel.org,davemloft.net,google.com,redhat.com,kernel.org,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,gmail.com,lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stfomichev@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8C37F31D726
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 03/24, Jakub Kicinski wrote:
> On Tue, 24 Mar 2026 11:13:04 -0700 Stanislav Fomichev wrote:
> > > > +		netif_addr_lock_bh(dev);
> > > > +
> > > > +		err = __hw_addr_list_snapshot(&uc_snap, &dev->uc,
> > > > +					      dev->addr_len);
> > > > +		if (!err)
> > > > +			err = __hw_addr_list_snapshot(&uc_ref, &dev->uc,
> > > > +						      dev->addr_len);
> > > > +		if (!err)
> > > > +			err = __hw_addr_list_snapshot(&mc_snap, &dev->mc,
> > > > +						      dev->addr_len);
> > > > +		if (!err)
> > > > +			err = __hw_addr_list_snapshot(&mc_ref, &dev->mc,
> > > > +						      dev->addr_len);  
> > > 
> > > This doesn't get slow with a few thousands of addresses?  
> > 
> > I can add kunit benchmark and attach the output? Although not sure where
> > to go from that. The alternative to this is allocating an array of entries.
> > I started with that initially but __hw_addr_sync_dev wants to kfree the
> > individual entries and I decided not to have a separate helpers to
> > manage the snapshots.
> 
> Let's see what the benchmark says. Hopefully it's fast enough and 
> we don't have to worry. Is keeping these lists around between the
> invocations of the work tricky?

Yeah, that sounds doable, don't think it's too tricky, just extra
list_head on net_device + change the alloc/free to use it.
And then we keep this cache around until unregister? I will try to add it as
a separate patch to cache these entries to keep it simple for review..
 
> > > Can we give the work a reference on the netdev (at init time) and
> > > cancel + release it here instead of flushing / waiting?  
> > 
> > Not sure why cancel+release, maybe you're thinking about the unregister
> > path? This is rtnl_unlock -> netdev_run_todo -> __rtnl_unlock + some
> > extras.
> > 
> > And the flush is here to plumb the addresses to the real devices
> > before we return to the callers. Mostly because of the following
> > things we have in the tests:
> > 
> > # TEST: team cleanup mode lacp                                        [FAIL]
> > #       macvlan unicast address not found on a slave
> > 
> > Can you explain a bit more on the suggestion?
> 
> Oh, I thought it's here for unregister! Feels like it'd be cleaner to
> add the flush in dev_*c_add() and friends? How hard would it be to
> identify the callers in atomic context?

Not sure we can do it in dev_xc_add because it runs under rtnl :-(
I currently do flush in netdev_run_todo because that's the place that
doesn't hold rtnl. Otherwise flush will get stuck because the work
handler grabs it...
