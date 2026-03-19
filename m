Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJCWCD0cvGlEsQIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 16:54:37 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 857E32CE111
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 16:54:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A3A698432B;
	Thu, 19 Mar 2026 15:54:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id VEU0JfMUZWpC; Thu, 19 Mar 2026 15:54:34 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 979998432C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773935673;
	bh=flkM1UPgnzZIIWUPlhpYdE/CMruOMnml9ArMjCoVGE8=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=NJ9sMEzSJUVyRHJMVb8t2P8TNOTE7hm/C01GGtrfhTRiMtcLGhIVwoEDo2i2UROsL
	 WCYFHdwVDiimNcTM34lay8bTDWN4TBS9mel1WokXOFFMLMbVPrJj4M7WABl4hz6rN/
	 J3GxmBUdqa0WTH4k6IJM57OY7DL1b4FFDq1MN7smRu6NcAXf5SiZ8JEOF6O7Xq0LSk
	 IWIk/K1PRwKX2upEDtXOc+iT0OcPWJQP3h6jR7BOYlIn5YMmMG3/XxgwJfjYFa/o/d
	 SZdLWBbU9wXecQCYVBkyGyPKSD4NSiWEEwlN1FuugbzSi8b4Vua4ZftUgSGitSs2/I
	 896yEus7KGDiQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 979998432C;
	Thu, 19 Mar 2026 15:54:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 96C2F1B6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 15:54:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C8B3403BE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 15:54:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qsj_RNbtXL_n for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 15:54:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::42c; helo=mail-pf1-x42c.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8D065401FD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8D065401FD
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8D065401FD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 15:54:30 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id
 d2e1a72fcca58-82987437624so671067b3a.1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 08:54:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1773935670; x=1774540470;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=flkM1UPgnzZIIWUPlhpYdE/CMruOMnml9ArMjCoVGE8=;
 b=AXCZLkR4Ka4ITZl0BSgQOnCYrJrlP+7sCM5u+fqasRrEkaoGTsMRysQUMXNwwr1wfv
 7aoCiv7VOom/XMaMON2sgo/wHerDeGrUsQPeCLZX661YazFOYogTfM2XEsWlOMXOuAud
 5Q7GL2SmlgDKo+IVwca/etD7H+yderf5W9fNTcJVP6RYWU6ErQej2U9CD3ypu+MFSEXK
 yK7Gqk5gnn/RUB0KpwM9CjuQhfzToA46w1cp1O+cV1hRXmv6d2xUoxx2FK76nN+QQjh5
 2o3TKtbRZbBgnQ3/gwyoe0gHK1XVLLEVqsVjZMAty4tDJ/J/6AOkrbF+Z1kX1jqPifMa
 rcYg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVg/xD38qIxOFwmmSctT90XLg1n6m8j3XtqCL2IOPI/xUwquhaObMfDRQtJeOsTmE8T2E2Jztet1Ywflw6rv1Q=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyG2KPWj9bzpyuCZry9q6/e72CJgC8N+p7dQgz6tD7aClrSRu4e
 9JH1MUmA2Q1vxzXzcY/taDEIVLHN1EyN/ChOGAmvWcAgUu+G/mMOWA4=
X-Gm-Gg: ATEYQzwHLe1oXt1k5I5bSamkUX1LZe7u11REqIBKudU+VUVr7oeY+rkjrv6FlLw/Is8
 vm9YWmdOkCVSF2LmaUvueFz1WMFrpdtsN5cnbtpDOi6Ch2yD3JKrGPzM+kjYT2n/xRQAZBAzDID
 lIzrNeghX9dkdoH9TAF6ip/09KcFlY5EEaDIi7vzjB1qQiWUe4qL/OMI7nPcXNvcdFL/GzdIxtt
 4AxnyefBdnbIu3NbVelRXt60jofUKfzp4Oti6vi8cHCeWsNKt0qwnNGfDlZRLXGygPvBqqaBqLr
 pVzXOVjDq/ZUcmi5PQUY7zH/c44nYfRavT1cLfM/aMYvfW4kPS/jC/k296EXFZ4lPq1eXlIWmVR
 Nvq5USc91b113aPH41upNpWhSkKT42UEEEP0bBUl0YXnbDiZVIK7zlwPqlB+SxU1oSa3pKhRAHK
 goio6GnUG1QlLVIN+lLWiALkcOthg9E8r1B78PKTU+CIR3yJq7qhYWbzPkMWVSumTGh3FuHN9Nx
 KWwXBudgUf59yF/iA==
X-Received: by 2002:a05:6a00:a8c:b0:829:f777:dad4 with SMTP id
 d2e1a72fcca58-82a7a97b202mr3053986b3a.29.1773935669410; 
 Thu, 19 Mar 2026 08:54:29 -0700 (PDT)
Received: from localhost (c-76-102-12-149.hsd1.ca.comcast.net. [76.102.12.149])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-82a6bbb51d1sm7913205b3a.28.2026.03.19.08.54.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2026 08:54:29 -0700 (PDT)
Date: Thu, 19 Mar 2026 08:54:28 -0700
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
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "leon@kernel.org" <leon@kernel.org>
Message-ID: <abwcNMcZHW0ThCkW@mini-arch>
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
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "leon@kernel.org" <leon@kernel.org>
References: <20260318150305.123900-1-sdf@fomichev.me>
 <20260318150305.123900-9-sdf@fomichev.me>
 <IA3PR11MB89866985981DB64EFEBDF0ACE54FA@IA3PR11MB8986.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <IA3PR11MB89866985981DB64EFEBDF0ACE54FA@IA3PR11MB8986.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1773935670; x=1774540470; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references
 :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
 :subject:date:message-id:reply-to;
 bh=flkM1UPgnzZIIWUPlhpYdE/CMruOMnml9ArMjCoVGE8=;
 b=EpbIA2WQJpz1GAbl/MkAn50F8aIhUUne9XQ+5FEGmYJ5qhXId7DFAko8mUa0qwM2K2
 FIbBnrx3wJqKTt15yQg5/aa6z1kc/cuibE95r13xalx5fz5ND6g8ocOmDS+0TVMWgcjS
 UzMYfHOvuuuPSncBrL2IoQylX1Xn3lPS9FxzbLvh0Cn4aQbRrU36SK5LZB2UFfIjkbFM
 trJKtRy2+y+D1/xl+0qZM2S2Xfu2HaThixo9Jb3RpPyWineaOQu/FfQoAyTVYzww1X3r
 asW9ZiGKEcQsMVBzHkzY0eJzyHZ0ABnhwdgzSoJXEbMioOA259BfA0bP+SL90HIbfP5l
 EKcA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=EpbIA2WQ
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 08/13] bnxt: use snapshot
 in bnxt_cfg_rx_mode
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
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:michael.chan@broadcom.com,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[stfomichev@gmail.com,intel-wired-lan-bounces@osuosl.org];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[36];
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
	NEURAL_HAM(-0.00)[-0.974];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 857E32CE111
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 03/19, Loktionov, Aleksandr wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Stanislav Fomichev
> > Sent: Wednesday, March 18, 2026 4:03 PM
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
> > skhawaja@google.com; bestswngs@gmail.com; linux-doc@vger.kernel.org;
> > linux-kernel@vger.kernel.org; intel-wired-lan@lists.osuosl.org; linux-
> > rdma@vger.kernel.org; linux-wireless@vger.kernel.org; linux-
> > kselftest@vger.kernel.org; leon@kernel.org
> > Subject: [Intel-wired-lan] [PATCH net-next v2 08/13] bnxt: use
> > snapshot in bnxt_cfg_rx_mode
> > 
> > With the introduction of ndo_set_rx_mode_async (as discussed in [0])
> > we can call bnxt_cfg_rx_mode directly. Convert bnxt_cfg_rx_mode to use
> > uc/mc snapshots and move its call in bnxt_sp_task to the section that
> > resets BNXT_STATE_IN_SP_TASK. Switch to direct call in
> > bnxt_set_rx_mode.
> > 
> > 0:
> > https://lore.kernel.org/netdev/CACKFLi=5vj8hPqEUKDd8RTw3au5G+zRgQEqjF+
> > 6NZnyoNm90KA@mail.gmail.com/
> > 
> > Cc: Michael Chan <michael.chan@broadcom.com>
> > Cc: Pavan Chebbi <pavan.chebbi@broadcom.com>
> > Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
> > ---
> >  drivers/net/ethernet/broadcom/bnxt/bnxt.c | 24 ++++++++++++++--------
> > -
> >  1 file changed, 15 insertions(+), 9 deletions(-)
> 
> ...
> 
> > -static int bnxt_cfg_rx_mode(struct bnxt *bp)
> > +static int bnxt_cfg_rx_mode(struct bnxt *bp, struct
> > netdev_hw_addr_list *uc,
> > +			    struct netdev_hw_addr_list *mc)
> >  {
> >  	struct net_device *dev = bp->dev;
> >  	struct bnxt_vnic_info *vnic = &bp-
> > >vnic_info[BNXT_VNIC_DEFAULT];
> > @@ -13623,7 +13625,7 @@ static int bnxt_cfg_rx_mode(struct bnxt *bp)
> >  	bool uc_update;
> > 
> >  	netif_addr_lock_bh(dev);
> > -	uc_update = bnxt_uc_list_updated(bp, &dev->uc);
> > +	uc_update = bnxt_uc_list_updated(bp, uc);
> >  	netif_addr_unlock_bh(dev);
> > 
> >  	if (!uc_update)
> > @@ -13642,7 +13644,7 @@ static int bnxt_cfg_rx_mode(struct bnxt *bp)
> >  	if (netdev_uc_count(dev) > (BNXT_MAX_UC_ADDRS - 1)) {
> >  		vnic->rx_mask |=
> > CFA_L2_SET_RX_MASK_REQ_MASK_PROMISCUOUS;
> This limit check uses the live device list, dev->uc.
> In the new async model, the live list can differ from the snapshot.

Oh, yes, good catch! Will do s/netdev_uc_count/netdev_hw_addr_list_count(uc).
