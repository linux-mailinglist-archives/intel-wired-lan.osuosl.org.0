Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IAMaHYrF+2lSEgAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 00:49:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id DDB1B4E1618
	for <lists+intel-wired-lan@lfdr.de>; Thu, 07 May 2026 00:49:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 845D560EC1;
	Wed,  6 May 2026 22:49:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0pGYBF5kgcww; Wed,  6 May 2026 22:49:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D993760F5E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778107783;
	bh=wB9Jbl6OwNsn+HVcduUaP/1MdPcWg7cvGBqOaohDZOA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JQKHTN0NR1q5Ykc5BbU0JsHDwCCBbCXJe8ZJgcXHRu0+sU+l5lKvOY0/4mznjg/3S
	 jmBPF8XkQWMRFJw4vy4IU9b8zMMbLFeh89Csd5EGpjR+zVfB3yMwxhIUe3yKy46FC1
	 jvGIoQmCuuK6pMziR613RQEVesD/tPqZIrssAfr6GmgnAuVG2zbyZ6Uku1j0PElvkj
	 l2yqxl/KfL1pbSxrMG/WUDKQnXW+gpJ34BAWwXQBwmv/pS9siscQQ2B+WerLPZqgOh
	 qyOPxYa4WJOSNF7HOS0IG9oc8bvE8Owq7ksyrh0gJmkONeEcBPv784YMHZBErE2og3
	 uv9HBEN4vBGVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id D993760F5E;
	Wed,  6 May 2026 22:49:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9F485280
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 22:49:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7E6DB833DB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 22:49:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w4N9tbidG0MX for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 May 2026 22:49:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62d; helo=mail-pl1-x62d.google.com;
 envelope-from=mkhalfella@purestorage.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C9348828DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C9348828DF
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com
 [IPv6:2607:f8b0:4864:20::62d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C9348828DF
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 May 2026 22:49:41 +0000 (UTC)
Received: by mail-pl1-x62d.google.com with SMTP id
 d9443c01a7336-2b4583f0a1aso1107985ad.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 May 2026 15:49:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778107781; x=1778712581;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=wB9Jbl6OwNsn+HVcduUaP/1MdPcWg7cvGBqOaohDZOA=;
 b=r29BGiPC31GFeUXq4SL/Hl4Fau18rVav8LGPW+vaf275TwWgIKSLtltd2xep4ge35M
 qyNFIHakoZxGPz77PPfWDGkWrEOjaX3e+P6jce3Cbnxgk9GQEYdwGKlX92SUknPlLOgz
 E7FbGSVtLh4nV49/7zWPnCfbLpbF2ND1BAx1kMVxdmAuApE8SxKZ79dP6IcF9F4kcYM5
 0BGC6P8e9iimm+YAlAHHdNSOnt5Q529WjPJfMGFYYYRpFTJzeI8EwqCPvkK48ZaaZ5ah
 MERR63n2q8smLi0WRhg4e6UFkMjFtlfNpv+X1yM356hzbfvT2BZDJ6N+xL4b94FZ3aJV
 GBVg==
X-Forwarded-Encrypted: i=1;
 AFNElJ+A9BFjjVfDBdPNwpEYSCF/30lVPWq0vMVQBrpPqqYu2dYoK1KX3/W3vNdm4LZiHxz2xnvzvmfYhk6Ksm5Vwxw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyIHOJNwipwsn0KNXm8Y8YR9foUQxoPAvNfVrGNHGNfs5iR/B52
 BImJfYY36vqtLpB0WdX4ycFdC/vrYP9UgYodhjnd4/4gKr3Rg0lfREj12QUY19bJex0=
X-Gm-Gg: AeBDietRiG+Gb5N9SyNk/b7EhA7CUmLteXOliUdm63xJVQ0gQ6HcupzLIaXU1z2+MIw
 js9z1UpamOiPQIsq0Gyu9M8xYoVhcZLxEb89y3y4sqqt5W2yYBNuFftrqdnUT6XoLOiWMMcOV4u
 MzTWTZvhgIc3I++ChQd6iureME/yNPaTni0uglJ3ZqC1nAAptODQi00RkkSImtC5VzOOt4X66c6
 B/SmouBiGQCCa8NPEDpcXVsOPyVG2kmoovTMEqUiQvDBqOTEPLfwpxHx63GHwi/sJUYXoN0Im4r
 mv0Dl1LEQx0Y8ky5FAy2Vjsqk3McxkkXSL2J2bzva0xYCGvCKXFEU6lUXc0HewEiHVuqUEQacvB
 wRhat2QUKVHDI4HHy3QZKdYbxgdNAS8kjtVTwX+L3i5FN7Eeqw5XQS+TQeSMxcGJH2rfwrKEtRN
 Ui4DBQRRy13+P6bq0bI8QF1hZKBsnJwSh3odvWR/gNmY0xUxemGRCrl8lA7lpSUumZpw==
X-Received: by 2002:a17:903:187:b0:2b2:be01:5532 with SMTP id
 d9443c01a7336-2ba799d4662mr61394475ad.35.1778107780763; 
 Wed, 06 May 2026 15:49:40 -0700 (PDT)
Received: from medusa.lab.kspace.sh ([208.88.152.253])
 by smtp.googlemail.com with ESMTPSA id
 d9443c01a7336-2babaaed237sm2689955ad.27.2026.05.06.15.49.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2026 15:49:40 -0700 (PDT)
Date: Wed, 6 May 2026 15:49:35 -0700
From: Mohamed Khalfella <mkhalfella@purestorage.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org
Message-ID: <20260506224935.GD10532-mkhalfella@purestorage.com>
References: <20260428181450.2622899-1-mkhalfella@purestorage.com>
 <558971b7-caea-471a-8fe2-73ba6cc0790a@molgen.mpg.de>
 <20260429165229.GF2686-mkhalfella@purestorage.com>
 <10637b35-766c-454b-b9fc-ac9e6df36da5@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <10637b35-766c-454b-b9fc-ac9e6df36da5@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=purestorage.com; s=google2022; t=1778107781; x=1778712581;
 darn=lists.osuosl.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=wB9Jbl6OwNsn+HVcduUaP/1MdPcWg7cvGBqOaohDZOA=;
 b=NMTdDsk168qbB6CDJDPmtIvu2q+eDmtPB1rm4GCuIl3p1aP8nPbYznAEl58CB8SAPO
 80KiBhlnlpCWb4HAd5OeL6lX+n8ak8ZGWPadqWLRKmjymQtg3gp5XK3MMcxLhL1QDIHG
 CrH7xYGxuYqVV0k6nVfh1Hpd/5jlWlOvaj7de5yv9n8d940RXf2btY3kIs7v1DfAz5hl
 8ajRRLxyHdwDUdSb+Of6SKSwpC03nzIVG3v4S+DSxLEaavSicHfIRMxlN6yLImpZp0kY
 AQBR5RKuJLrtM0oN75IIVwjU56eHxjGGQM8EWPfm0ScDNcyVHAfkQAWRl/7rmTmSkhTj
 vPFw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=purestorage.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=purestorage.com header.i=@purestorage.com
 header.a=rsa-sha256 header.s=google2022 header.b=NMTdDsk1
Subject: Re: [Intel-wired-lan] [PATCH] i40e: Fix i40e_debug() to use struct
 i40e_hw argument
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
X-Rspamd-Queue-Id: DDB1B4E1618
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [9.79 / 15.00];
	URIBL_BLACK(7.50)[osuosl.org:dkim];
	DMARC_POLICY_QUARANTINE(1.50)[purestorage.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:pmenzel@molgen.mpg.de,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[mkhalfella@purestorage.com,intel-wired-lan-bounces@osuosl.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	GREYLIST(0.00)[pass,meta];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[purestorage.com:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.974];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mkhalfella@purestorage.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	R_SPF_ALLOW(0.00)[+mx];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: add header
X-Spam: Yes

On Wed 2026-05-06 14:57:26 -0700, Jacob Keller wrote:
> On 4/29/2026 9:52 AM, Mohamed Khalfella wrote:
> > On Wed 2026-04-29 13:02:00 +0200, Paul Menzel wrote:
> >> Dear Mohamed,
> >>
> >>
> >> Thank you for your patch.
> >>
> >> Am 28.04.26 um 20:14 schrieb Mohamed Khalfella:
> >>> i40e_debug() macro takes struct i40e_hw *h as first argument. But the
> >>> macro body uses hw instead of h. This has been working so far because hw
> >>> happen to be the name of the variable in the context where the marco is
> >>
> >> marco → ma*cr*o
> > 
> > Good catch. Also 'happen' should be 'happens'
> > 
> >>
> >>> expanded. Fix the macro to use the passed argument.
> >>
> >> I’d add a Fixes: tag, but the maintainers might have more input.
> > 
> > Yes, I should have added Fixes: tag. I will leave it to the maintainer
> > to decide if v2 is needed to fix the spelling mistakes and add Fixes
> > tag.
> > 
> > Fixes: 5dfd37c37a44 ("i40e: Split i40e_osdep.h")
> > 
> Please send a v2 with the fixes tag and typo. It will make it easier to
> avoid losing this data.

Done https://lore.kernel.org/all/20260506224123.691160-1-mkhalfella@purestorage.com/
