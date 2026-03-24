Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SOmeDE/UwmmwmgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 19:13:35 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C30531A922
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 19:13:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0697B4111D;
	Tue, 24 Mar 2026 18:13:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zb_6AQ3m-DQw; Tue, 24 Mar 2026 18:13:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7FBD941085
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774376012;
	bh=j4KIbqvhidbLdE2zkNvP4L5iPrMq8r7qV66qKB0JP/0=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=owiNH6NEiGjTAxKt8/7MistpXD0YT3tvY0qWsy1ikzMzwwIrZJllTvJcRKOSJlb+y
	 UoapfTT7XAggHm8sYAtBkOCSVTU1rzpIW+5hYpkDkryPMVoxrvdhD6QlyJIjMNRnk8
	 MBvhk1Y+wMR1ddXpLL4eiA+dcEjPPP0/xq5FkZc/m3nzA3cY8Oyb07KL4R0lVdh4dG
	 OYIi+P1HHeTxgRLP9a6ycjjlq4evgwA8FRpsXkBCMLq1yyaWH0iRjatzY9UlKyOC+8
	 SBSvFxUigBQRmbUiDhpzy0m7SbEoz9OWIGYpoWRXxljaQLn/0O2bQugvEvkrDIIUTq
	 UmaVYTUFPFtgQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7FBD941085;
	Tue, 24 Mar 2026 18:13:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8A6801D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 18:13:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7014060B9D
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 18:13:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ecnbCNxw62w9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 18:13:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1234; helo=mail-dl1-x1234.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org BEC4260B4E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BEC4260B4E
Received: from mail-dl1-x1234.google.com (mail-dl1-x1234.google.com
 [IPv6:2607:f8b0:4864:20::1234])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BEC4260B4E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 18:13:29 +0000 (UTC)
Received: by mail-dl1-x1234.google.com with SMTP id
 a92af1059eb24-12732e6a123so9406127c88.1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 11:13:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774376009; x=1774980809;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=j4KIbqvhidbLdE2zkNvP4L5iPrMq8r7qV66qKB0JP/0=;
 b=MYlmiTQpBphAPIybrwtCjpPm247+CCHF+my589k/+XGv7wwnltkx6ru2no7Qx1/ssE
 m5oNPJhBeujUCK4NWF5xX6hJyRrGd2MrDViqmsa+rubbM3ddhxH4H6oH7xq3KuE6PJdX
 626FiivUdfVqFkcURvsI4Gq8VLZWaISDleacOTds/oY0JRYw36JTP+ejpNaXs8yBDRUo
 FbihoLBeIPMZ6vyesew/dSt9CqD6NxibvBuqYLKajCJIqWCy618YP6QoYzch5BxPCXAg
 qZTYbk/VseVt+snGHoLs5MqmLmGJV3w0vJ5ddsar2O6Yf+rinSA/5lMHbW4UIOYRDaNw
 NAeA==
X-Forwarded-Encrypted: i=1;
 AJvYcCVZH4M2qTXM7Zf2Aqqc/NeRfZiCx6+1Lrg/0Er0ss8i30aYD0Ket+QPhYIKPJplu6O990R71wgePXTG9DWSnfw=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx23h3ut4AqCnZAP+ggELrN5FTle5ZKOI5/95wBUqy7DPwGY1IC
 XUb3CxDTlVzf5LrdYBJpXNmNW9UPOknp4NrkWN43Go17ckXZPHpbewo=
X-Gm-Gg: ATEYQzxtN9H6WtxRldJLR381y6oSXP/nFUG2toF4C2zdzx3UvCvT7oRniNIfmDxXbGm
 PJKAuDTTr69NO6k9UfqxCAYFwBSoYtQSGTy/TJeZz+PSUIFsm5aeBR4e0R34rENruAkVscyeRGq
 rdg7xs3/UQaldCFwwP9Lh8Uz0oDIusYRCX6S7O/vfkoVwXQQ704p3S/W4BPVn7AgMiULU+n5tMI
 gf00BYQWPgrE2OR8wnv+9fl5YlTFEorVFs8xihc0CEdwkBNtP6PdEml8+7hl9sSTTh4JVhwiYMw
 TuKtRPPA0QtNVcbFKw0h9tsZfA6KfFYYXTb3oyybutoKmdO/919MxqfO9fAQIZhe5KhupTHy/bQ
 sz6hX0stwMhPUPqhpAKDNyD+eRSCOb4+tsbltE1BuijWmu8i4HP9WJsY65AakKGN2z9SNVoMOee
 awQHhvCszc6NbN35Ukb1PonYlIrA8Wi2V2C/pDljZrPv69O3crG7oPKbGE71tOYMLsxSdl9lsxm
 sne9owUEjDbKpe+uA==
X-Received: by 2002:a05:7022:526:b0:125:be41:db5b with SMTP id
 a92af1059eb24-12a96f200f8mr243112c88.42.1774376008513; 
 Tue, 24 Mar 2026 11:13:28 -0700 (PDT)
Received: from localhost (c-76-102-12-149.hsd1.ca.comcast.net. [76.102.12.149])
 by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2c10b35116bsm18984900eec.30.2026.03.24.11.13.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2026 11:13:27 -0700 (PDT)
Date: Tue, 24 Mar 2026 11:13:26 -0700
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
Message-ID: <acLURpj2nttA6De3@mini-arch>
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
 <20260320012501.2033548-2-sdf@fomichev.me>
 <20260323162053.62a148c2@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260323162053.62a148c2@kernel.org>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1774376009; x=1774980809; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=j4KIbqvhidbLdE2zkNvP4L5iPrMq8r7qV66qKB0JP/0=;
 b=V7W7NuwWT2rUdexlPhoid0JOABf6VYHXO1evkkhNWrLJzYnlP+2X8xtwQHlBuWkNqb
 wu1C1ipmBYBpusCG1HMxBnU5wFm8d8oWSpE9RIuqY39snvgj3i7J4pTa9SM6qFiCixbz
 GdILo6cDK4CV4mC7z3/wgy5S4EZA5VsF76w+zwNmejCv7ZpDZJAf5ny62wzMvTp+l6PB
 W5xX/rK2e8GEzjhUR+ucJuzf9R1ybgK30J7p1fPyFZrv/HHR2BhW0ZtvDWOMTy2OfujO
 oho84FOmsgoNyBm5JIhCtEkUvaDHeayjLpgkGNm4TOMc4ldR+A4PI8jyc57slQmm5vLc
 +IRQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=V7W7NuwW
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 01/13] net: add address
 list snapshot and reconciliation infrastructure
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kuba@kernel.org,m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:aleksandr.loktionov@intel.com,m:kees@kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[stfomichev@gmail.com,intel-wired-lan-bounces@osuosl.org];
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
X-Rspamd-Queue-Id: 9C30531A922
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 03/23, Jakub Kicinski wrote:
> On Thu, 19 Mar 2026 18:24:49 -0700 Stanislav Fomichev wrote:
> > +EXPORT_SYMBOL(__hw_addr_list_snapshot);
> > +EXPORT_SYMBOL(__hw_addr_list_reconcile);
> 
> Why?  For the kunit tests?

Yeah, no good reason, will remove!
