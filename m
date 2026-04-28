Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CChwLcg68WlyewEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 00:55:04 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8088948CDCD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 00:55:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE2036108F;
	Tue, 28 Apr 2026 22:54:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aB7Pc4Jlqx1e; Tue, 28 Apr 2026 22:54:59 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BAC961068
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777416898;
	bh=TD3g81YgYyk+ev+8kkfCadZc9PhNHKB3ZIvkWb2+QeU=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=VjrD+YWDj0e8PUwnBYOOJn+8Rr3SYXxZghRhQ0zxZ7udacK50OzHiSL+qfVLgfEqR
	 fsT5RnSw9ET9AHhGXIS3b1zLOeKnV0VS4oXhcntkkWfhjKVGeT+P2E8KCGZLaaqTjn
	 WcssRCHMk35dm51Tm2/OU2XJ12fSaIw9CDl1eXa60GZ0vcjw4iBEqidCQUoiQhU5Mz
	 0+IkpvFby0O42NZsj4X+NwTMPS4pZ5qy9r2GPjHNg07J39PABN+jGWnieKMyjIukgb
	 Rao+NMgr8OGSCm8EUO49DYx/7fgtFrKLjBkNtXb5rFpcwdGFV9MUruxE2lWnOMhiJ7
	 NPnE8Ot/rc2IA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BAC961068;
	Tue, 28 Apr 2026 22:54:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 283FF1B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 15:01:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0881E403D7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 15:01:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aCFwWzFQ2pLU for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Apr 2026 15:01:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52f; helo=mail-ed1-x52f.google.com;
 envelope-from=error27@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 44C0E403C3
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44C0E403C3
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com
 [IPv6:2a00:1450:4864:20::52f])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 44C0E403C3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 15:01:47 +0000 (UTC)
Received: by mail-ed1-x52f.google.com with SMTP id
 4fb4d7f45d1cf-678e678970fso5429912a12.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 08:01:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777388505; x=1777993305;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TD3g81YgYyk+ev+8kkfCadZc9PhNHKB3ZIvkWb2+QeU=;
 b=CvliVCF3Kj8nLfamQuIrSjnN+LOax40majFNdqMGt+EAeTj1bA8g8zs9nsJeA0UK+6
 29ky7DSZWcYS2n8qhLwEuj9QZE3sdU2DbOt5SCvyRNMbxX4ZxXuMkkZbzRRkWbHn4JG0
 8zkvbQPBV0lF+EBpqJ8womVj9YMdvsE8cr/stbO9T3ki+qPAWiNS4fdA1q29PI0hxfuv
 Anbx7jK1yV05RHV5jt/5+5XsObByH021x7E/Q7AdPABz2bCSKkqDNYeMdhobAxUtK8D2
 pzPWkI8SN4tujtRtiPze1pMaM50ngw1yO4CgDXJi8AAMsHAsgC1ANzb4EiL8RntzWXJa
 /mDg==
X-Forwarded-Encrypted: i=1;
 AFNElJ8r9UUXu+tWgjHbjT+4sk9BdwFJ3juwChkap8C8qzmBMAerRDrjBPgHvyGpq0jVXMenGOkptw0nkEO8jC7kFyE=@lists.osuosl.org
X-Gm-Message-State: AOJu0YycSX9i1cc2wZPXlZAM5RliC3M8kWw2iMNmZq4t4gMn5Whm4IfQ
 Lod2VJbnA/foZMOJOCyugxtbDiEexYibtdFAS7pEYGKxhocHMmxqzBkO
X-Gm-Gg: AeBDievYpzI48kkjFyrkb5Nc8IwX7kWLwaRrRyOt7Fq/dKBwknanHL0VFEqtUAe1PQL
 QRy1x5cQZGooPtL8h/jCba62NdKE+l57XR2Fe/Y6zLnFRLEHuqHgX6/LZObgT2FExFKgnWW4iU4
 peRX8wzlw1S9PJpgGGwQT/g3VcapQv3KlqWw8jnNoKmXRZ9Z113DxZ/HB+gpOLPyg83/OSFilEH
 KfZ8U7hErXo0tQbuy+NpBDM8qj0N2szFwbA0k8uYJ6dyW7MLbwl4/mz3Jd/epe91Mpf4GYRZwtx
 9qBcYPhDPAx97yEPDrIAfaNUK27fFnW8UNxNGpAs+SuA3R+mz8/j+hkkZmLwy880RddHYKnfwdO
 d0ABwGhvN8U71QaOZitTVWCcopIMw2wTFCvAfqvMsPi5hRxKO3F2His1CmL1eytNnY+g1Bm9apA
 IHKGGBWJofEXJsceLaFUis6NHL13OsxpcBgPMRmeNg
X-Received: by 2002:a17:907:3d45:b0:bae:70db:91f5 with SMTP id
 a640c23a62f3a-bb803e5c931mr212259066b.35.1777388504521; 
 Tue, 28 Apr 2026 08:01:44 -0700 (PDT)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-bb80ba9b8c8sm110829466b.48.2026.04.28.08.01.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2026 08:01:43 -0700 (PDT)
Date: Tue, 28 Apr 2026 18:01:39 +0300
From: Dan Carpenter <error27@gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Jakub Raczynski <j.raczynski@samsung.com>, netdev@vger.kernel.org,
 kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-kernel@vger.kernel.org, kernel-janitors@vger.kernel.org
Message-ID: <afDL02Z4QV6G0UxF@stanley.mountain>
References: <CGME20260428103757eucas1p132f3f1123fae21d596a51cbdce72c931@eucas1p1.samsung.com>
 <20260428103653.3539239-1-j.raczynski@samsung.com>
 <ef61b770-ebf4-406a-90a0-8a49aba02aee@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ef61b770-ebf4-406a-90a0-8a49aba02aee@intel.com>
X-Mailman-Approved-At: Tue, 28 Apr 2026 22:54:54 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1777388505; x=1777993305; darn=lists.osuosl.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=TD3g81YgYyk+ev+8kkfCadZc9PhNHKB3ZIvkWb2+QeU=;
 b=oUlBtUYjZ/LElw0Do6x2tSiUOCJ6tM4m1x3INcCvzao88Vi9mMDco3ts7vQ+pNNMpO
 YZf9owZ9ChGt/ddn1keVJqi9CxhTKd+ExUynuEt28rQuQ7tqy1DHu52mSsjhG5vGb2X+
 vQzM1c+kareKBXcDratnpGMucvSNjqGHZkRpYYdXkRum5GlsZDh+tcrx+LOnADknhwTV
 5I8p/uv52DZrhuMizi/gpgF+tcu6Nks4WDaQuiggX+izmJ40zhe1q6H7D9HKdbvqpKjz
 vJfDMsIuT5mnI9mAuSY5xn8cAQ7dI6D+XyJcCLvctcWolWX0446v1+SLLWZ55Fsajn4e
 IOWQ==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20251104 header.b=oUlBtUYj
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next] net/intel: Replace manual
 array size calculation with ARRAY_SIZE
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
X-Rspamd-Queue-Id: 8088948CDCD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.71 / 15.00];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:email,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:j.raczynski@samsung.com,m:netdev@vger.kernel.org,m:kuba@kernel.org,m:linux-kernel@vger.kernel.org,m:kernel-janitors@vger.kernel.org,s:lists@lfdr.de];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FORGED_SENDER(0.00)[error27@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[error27@gmail.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

On Tue, Apr 28, 2026 at 04:06:48PM +0200, Przemek Kitszel wrote:
> On 4/28/26 12:36, Jakub Raczynski wrote:
> > There are still places in the code where manual calculation of array size
> > exist, but it is good to enforce usage of single macro through the whole
> > code as it makes code bit more readable.
> > While at it, beautify condition surrounding it by reversing check and remove
> > unnecessary casting.
> > 
> > Signed-off-by: Jakub Raczynski <j.raczynski@samsung.com>
> > Reviewed-by: Dan Carpenter <error27@gmail.com>
> 
> thank you,
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> 
> (next time use "iwl-next" in the title, no need to repost just for that)
> 

Which sub directories go through iwl-next?  I was trying to update
my script

> > 
> >   drivers/net/ethernet/intel/i40e/i40e_adminq.h | 2 +-
> >   drivers/net/ethernet/intel/iavf/iavf_adminq.h | 2 +-
> >   2 files changed, 2 insertions(+), 2 deletions(-)

but look at these file names. There is no "iwl" anywhere in
the names!  :(

regards,
dan carpenter

