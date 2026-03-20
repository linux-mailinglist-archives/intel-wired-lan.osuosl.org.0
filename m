Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFnnFKBqvWnL9gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 16:41:20 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id F30282DCC76
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Mar 2026 16:41:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6371961B67;
	Fri, 20 Mar 2026 15:41:16 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2aBaBy5b6hGA; Fri, 20 Mar 2026 15:41:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AF79861B6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774021275;
	bh=zNUDTw6UmasFeJqzydufaazuaNtX8ofv0HS08KI6BZg=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=io2v9I5Q957Nzi3u3uqaBuoKsbz2IR6HV8qJvsAQZX3xw1OnYnzU8hN/a1p7rt51T
	 EsqXXzZk1OVQAXPz8PgaloG8WCopk+UWqWY6RzZXuAlqC9QO/0sNaPaOmOK0A6dDxi
	 eR8cx9YwaA/xPqtI+YQdd0e9LGf0rfR5r55+vuCxWjpnzhpxBYqu4pDFDJRc6EoO5a
	 1J1jMfMndT7b8A4DlcdwLQDUFFwkFWSDqWdcnZpxJ2mvuZy1dNgSL0R74XeWrcwRYH
	 wwY/OOGves4sZqVn6HK1Czsv39Y3ZY1jQLvw2bX9fagQ65zwJkA31PiuJieaw1NyAa
	 8ETdH9R7Cwyng==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id AF79861B6B;
	Fri, 20 Mar 2026 15:41:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 8A3AB25C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 15:41:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6715641E52
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 15:41:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FmHJaDpNxvjp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Mar 2026 15:41:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62d; helo=mail-pl1-x62d.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B589F41E56
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B589F41E56
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B589F41E56
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 15:41:12 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-2adff872068so3646825ad.1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Mar 2026 08:41:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774021272; x=1774626072;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zNUDTw6UmasFeJqzydufaazuaNtX8ofv0HS08KI6BZg=;
 b=JWABeKee62NfvgoSlKGbgp8atLFi6Sxv/bjnWGcGmBLFFBzcYxaeU8ikKX2psdpesf
 jM/w0Bx4yKMAo68Y6RiPstD1ZOZM5ZV0nTBT2G6Xrlu8cElWMq1ncZiv3eclUM07XFkv
 4qYwSa/tKiAgGBrmRYkRBflTgSjx8yJRLJXQpDj4ghOXq6GyLcSdOSjljAUmlE1LAMUN
 31eiD7EY4P0eSR0dxqVGa1JYqhAU8IuS8XGeH02n1lBpZx2vRKKxqkczi+OqttRqwFfZ
 wZ8KfD6Dxjj46BHS9rcTHagS7Dr/DfP+yJ08dYbaebHCyr4W8BZs7Gc22SfQJYs5Tfta
 wKzw==
X-Forwarded-Encrypted: i=1;
 AJvYcCV+FqzxGo7iWfWsxyapanvwJIgVyg3iyubEX3fyFKm+m4BSX7eRlzwGT6/bZiFRs+y6FwpifYc5fx2ZiJX/968=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxdIznPB7pV9Z+m9xl+HemcCEphH8ZZ828EDUkyasGLrrpNNpww
 IlzKuArYVqdiQETJc/zQxU64rddVHYX1syV9OomJL6DEzgQiMvskgiw=
X-Gm-Gg: ATEYQzyrrQk01W6+He1HIFJ0Re5AfPED7nvtofvpEhe+0IdkUfc/CT+JiMFTgs1qhfR
 NSjToeHg8n6WoANm7WVMWVkWB96sxm8/sX4jPwLwvWZg3dXiHc/C+baMWCjWnNIFGvrnxjTHT8C
 kl4rEu3yCCBd+rKKQLsdco3Vjp94yJ9N0zpyOAZG4EfcwNOvFm4IroGLN9wJqmvKbns/SIilET9
 A3hInImqEEWk/bA4PnJOI7i8O60/WJWYsaXvTq06G130S3d9D/jRWkBoUNfSvLJWs5K5Zm8s2dU
 aQp5Tn702+VFs352f3AravjH5Zj4IOSQoGTO1CB+fR45mbwJnzaRJL8aRVNU/QrE3+RszC9uEZ7
 +pwiPsYp7Aav+EPDIHkN2jL3TK/OB5cC4/bdS5O22Q4hOW44CS5XgB/kTpzA7LV3TlxoavS/oBK
 SECPbWK8o40A8bXLfdJRHBG/DTL78s7v3gmB164+QwaqtIGZt/jIHYdo4H0BPErx8QwSHQoqpTx
 ReI6Wiag6Ri0G0Ndw==
X-Received: by 2002:a17:903:38cf:b0:2ae:47c9:68c4 with SMTP id
 d9443c01a7336-2b0827f7629mr35987865ad.50.1774021271829; 
 Fri, 20 Mar 2026 08:41:11 -0700 (PDT)
Received: from localhost (c-76-102-12-149.hsd1.ca.comcast.net. [76.102.12.149])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-2b0835429afsm26089295ad.26.2026.03.20.08.41.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 Mar 2026 08:41:11 -0700 (PDT)
Date: Fri, 20 Mar 2026 08:41:10 -0700
From: Stanislav Fomichev <stfomichev@gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: Stanislav Fomichev <sdf@fomichev.me>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>, "corbet@lwn.net" <corbet@lwn.net>,
 "skhan@linuxfoundation.org" <skhan@linuxfoundation.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "pavan.chebbi@broadcom.com" <pavan.chebbi@broadcom.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "saeedm@nvidia.com" <saeedm@nvidia.com>,
 "tariqt@nvidia.com" <tariqt@nvidia.com>,
 "mbloch@nvidia.com" <mbloch@nvidia.com>,
 "alexanderduyck@fb.com" <alexanderduyck@fb.com>,
 "kernel-team@meta.com" <kernel-team@meta.com>,
 "johannes@sipsolutions.net" <johannes@sipsolutions.net>,
 "sd@queasysnail.net" <sd@queasysnail.net>,
 "jianbol@nvidia.com" <jianbol@nvidia.com>,
 "dtatulea@nvidia.com" <dtatulea@nvidia.com>,
 "mohsin.bashr@gmail.com" <mohsin.bashr@gmail.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "willemb@google.com" <willemb@google.com>,
 "skhawaja@google.com" <skhawaja@google.com>,
 "bestswngs@gmail.com" <bestswngs@gmail.com>,
 "kees@kernel.org" <kees@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "leon@kernel.org" <leon@kernel.org>
Message-ID: <ab1qllbwt2zCnQhI@mini-arch>
Mail-Followup-To: Stanislav Fomichev <stfomichev@gmail.com>,
 "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 Stanislav Fomichev <sdf@fomichev.me>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>,
 "pabeni@redhat.com" <pabeni@redhat.com>,
 "horms@kernel.org" <horms@kernel.org>,
 "corbet@lwn.net" <corbet@lwn.net>,
 "skhan@linuxfoundation.org" <skhan@linuxfoundation.org>,
 "andrew+netdev@lunn.ch" <andrew+netdev@lunn.ch>,
 "michael.chan@broadcom.com" <michael.chan@broadcom.com>,
 "pavan.chebbi@broadcom.com" <pavan.chebbi@broadcom.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "saeedm@nvidia.com" <saeedm@nvidia.com>,
 "tariqt@nvidia.com" <tariqt@nvidia.com>,
 "mbloch@nvidia.com" <mbloch@nvidia.com>,
 "alexanderduyck@fb.com" <alexanderduyck@fb.com>,
 "kernel-team@meta.com" <kernel-team@meta.com>,
 "johannes@sipsolutions.net" <johannes@sipsolutions.net>,
 "sd@queasysnail.net" <sd@queasysnail.net>,
 "jianbol@nvidia.com" <jianbol@nvidia.com>,
 "dtatulea@nvidia.com" <dtatulea@nvidia.com>,
 "mohsin.bashr@gmail.com" <mohsin.bashr@gmail.com>,
 "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "willemb@google.com" <willemb@google.com>,
 "skhawaja@google.com" <skhawaja@google.com>,
 "bestswngs@gmail.com" <bestswngs@gmail.com>,
 "kees@kernel.org" <kees@kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "leon@kernel.org" <leon@kernel.org>
References: <20260320012501.2033548-1-sdf@fomichev.me>
 <20260320012501.2033548-5-sdf@fomichev.me>
 <IA3PR11MB89866C27B28AE7D7D807F37EE54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <IA3PR11MB89866C27B28AE7D7D807F37EE54CA@IA3PR11MB8986.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1774021272; x=1774626072; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=zNUDTw6UmasFeJqzydufaazuaNtX8ofv0HS08KI6BZg=;
 b=TYEVm53LZl/+OQFs3jUWdyhKPMT3rAJs8hMh7ky2PPL4IVwxWdMkFJ6xMqinfXXOOZ
 yIWR9OKW4M6ZfeQgX5CL8QaEV/ZH2AOCvLZQP2XnCjm2LS9OrWoCnU8x48DHjBv1ssO5
 StaZXnreFCIsHsjDH6j11ORSBIeJgisxksDM+7HhcK7xLeXfjQwH2KGfBOXjG122fVln
 9ym9HWtCyrz+sppDwLpdYhcz2T0B6xmhNw8SxhfOexLqg7qgVfrragdSVexDTgJaZv/v
 jfwOZeG1Nh6od9uXgTI14IolNJmmb1RJAol78VuwPaGQS6Pr2O1BW2xRdC469+afF55b
 wWaQ==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=TYEVm53L
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 04/13] net: move
 promiscuity handling into dev_rx_mode_work
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:kees@kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[stfomichev@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[37];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stfomichev@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[fomichev.me,vger.kernel.org,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,gmail.com,lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.985];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F30282DCC76
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 03/20, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Stanislav Fomichev <sdf@fomichev.me>
> > Sent: Friday, March 20, 2026 2:25 AM
> > To: netdev@vger.kernel.org
> > Cc: davem@davemloft.net; edumazet@google.com; kuba@kernel.org;
> > pabeni@redhat.com; horms@kernel.org; corbet@lwn.net;
> > skhan@linuxfoundation.org; andrew+netdev@lunn.ch;
> > michael.chan@broadcom.com; pavan.chebbi@broadcom.com; Nguyen, Anthony
> > L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw
> > <przemyslaw.kitszel@intel.com>; saeedm@nvidia.com; tariqt@nvidia.com;
> > mbloch@nvidia.com; alexanderduyck@fb.com; kernel-team@meta.com;
> > johannes@sipsolutions.net; sd@queasysnail.net; jianbol@nvidia.com;
> > dtatulea@nvidia.com; sdf@fomichev.me; mohsin.bashr@gmail.com; Keller,
> > Jacob E <jacob.e.keller@intel.com>; willemb@google.com;
> > skhawaja@google.com; bestswngs@gmail.com; Loktionov, Aleksandr
> > <aleksandr.loktionov@intel.com>; kees@kernel.org; linux-
> > doc@vger.kernel.org; linux-kernel@vger.kernel.org; intel-wired-
> > lan@lists.osuosl.org; linux-rdma@vger.kernel.org; linux-
> > wireless@vger.kernel.org; linux-kselftest@vger.kernel.org;
> > leon@kernel.org
> > Subject: [PATCH net-next v3 04/13] net: move promiscuity handling into
> > dev_rx_mode_work
> > 
> > Move unicast promiscuity tracking into dev_rx_mode_work so it runs
> > under netdev_ops_lock instead of under the addr_lock spinlock. This is
> > required because __dev_set_promiscuity calls dev_change_rx_flags and
> > __dev_notify_flags, both of which may need to sleep.
> > 
> > Change ASSERT_RTNL() to netdev_ops_assert_locked() in
> > __dev_set_promiscuity, netif_set_allmulti and __dev_change_flags since
> > these are now called from the work queue under the ops lock.
> > 
> > Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> > Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
> > ---
> >  Documentation/networking/netdevices.rst |  4 ++
> >  net/core/dev.c                          | 79 +++++++++++++++++-------
> > -
> >  2 files changed, 57 insertions(+), 26 deletions(-)
> > 
> > diff --git a/Documentation/networking/netdevices.rst
> > b/Documentation/networking/netdevices.rst
> > index dc83d78d3b27..5cdaa1a3dcc8 100644
> > --- a/Documentation/networking/netdevices.rst
> > +++ b/Documentation/networking/netdevices.rst
> > @@ -298,6 +298,10 @@ struct net_device synchronization rules
> >  	Notes: Sleepable version of ndo_set_rx_mode. Receives snapshots
> >  	of the unicast and multicast address lists.
> > 
> > +ndo_change_rx_flags:
> > +	Synchronization: rtnl_lock() semaphore. In addition, netdev
> > instance
> > +	lock if the driver implements queue management or shaper API.
> > +
> >  ndo_setup_tc:
> >  	``TC_SETUP_BLOCK`` and ``TC_SETUP_FT`` are running under NFT
> > locks
> >  	(i.e. no ``rtnl_lock`` and no device instance lock). The rest
> > of diff --git a/net/core/dev.c b/net/core/dev.c index
> > fedc423306fc..fc5c9b14faa0 100644
> > --- a/net/core/dev.c
> > +++ b/net/core/dev.c
> > @@ -9574,7 +9574,7 @@ static int __dev_set_promiscuity(struct
> > net_device *dev, int inc, bool notify)
> >  	kuid_t uid;
> >  	kgid_t gid;
> > 
> > -	ASSERT_RTNL();
> > +	netdev_ops_assert_locked(dev);
> Can you explain why do you add new hard precondition of ops lock must be held?

The context is that in f792709e0baa ("selftests: net: validate team flags
propagation") I had to add locking around NETDEV_CHANGE notifiers and
add that ugly `if (notify) netdev_ops_assert_locked` check. After this
patch I believe we are consistently calling __dev_set_promiscuity
with the ops lock (for ops locked netdev), so we can cleanup this enforcement
part. 

> >  	promiscuity = dev->promiscuity + inc;
> >  	if (promiscuity == 0) {
> > @@ -9610,16 +9610,8 @@ static int __dev_set_promiscuity(struct
> > net_device *dev, int inc, bool notify)
> > 
> >  		dev_change_rx_flags(dev, IFF_PROMISC);
> >  	}
> 
> ...
> 
> >  	__hw_addr_init(&uc_snap);
> > @@ -9704,16 +9720,29 @@ static void dev_rx_mode_work(struct
> > work_struct *work)
> >  		if (!err)
> >  			err = __hw_addr_list_snapshot(&mc_ref, &dev->mc,
> >  						      dev->addr_len);
> > -		netif_addr_unlock_bh(dev);
> > 
> >  		if (err) {
> >  			netdev_WARN(dev, "failed to sync uc/mc
> > addresses\n");
> >  			__hw_addr_flush(&uc_snap);
> >  			__hw_addr_flush(&uc_ref);
> >  			__hw_addr_flush(&mc_snap);
> > +			netif_addr_unlock_bh(dev);
> >  			goto out;
> >  		}
> > 
> > +		promisc_inc = dev_uc_promisc_update(dev);
> > +
> > +		netif_addr_unlock_bh(dev);
> > +	} else {
> > +		netif_addr_lock_bh(dev);
> > +		promisc_inc = dev_uc_promisc_update(dev);
> > +		netif_addr_unlock_bh(dev);
> > +	}
> > +
> > +	if (promisc_inc)
> > +		__dev_set_promiscuity(dev, promisc_inc, false);
> But it's being called here without any netdev_lock_ops(dev) ?

We have the following at the start of dev_rx_mode_work:
  rtnl_lock();
  netdev_lock_ops(dev);

Or am I looking at something else?
