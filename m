Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TcZNDcJWMmpPywUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 10:11:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 838D2697747
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 10:11:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=VarBNEaB;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 039046F84C;
	Wed, 17 Jun 2026 08:11:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CDRnil53f7eT; Wed, 17 Jun 2026 08:11:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 56C646F84D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781683897;
	bh=/nCGBwD162szJNn9Qs6BTAgC+93fO08EX9M68ZjPe5Y=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=VarBNEaB32zcTdLzq78e61vG4dsH6m/aIbMqZ1bV9h6ftg2ZWOsJIOJnfc3JLzear
	 a+wXsma/CUVMA/6C+UAHE2ABfYq1NjIwPx0k0CnsIow41emEkoBeXeh83EABvvDFMS
	 YOcrAEy47UXoeGUezxH9WhzAV+zUzmXTOBPxvjKO0Fv5jm06ujCVHNRqy4BsvS7ww/
	 hFV45OCrZXvJ8RF8nL1BGBQWrN50yFfm7Ow99MsZxwGrtpxkXcOu6005wP6GxBixVJ
	 Gkb7PmVgg0niN1/7M9ZXoS7rj3d2jqQl4hd6Qc87cttnt+CuEW84S7V8WBo64ZzBaC
	 IWkbHHMNY/7sw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 56C646F84D;
	Wed, 17 Jun 2026 08:11:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 89EDAD8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 08:11:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 735F94ED27
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 08:11:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pNJVKPrb6xx2 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jun 2026 08:11:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org E2F464ED21
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2F464ED21
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E2F464ED21
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 08:11:33 +0000 (UTC)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 78D1D3F60E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 08:11:31 +0000 (UTC)
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-bf381078ac8so129908066b.3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 01:11:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781683891; cv=none;
 d=google.com; s=arc-20240605;
 b=SKIDMgg02GRbzpmN9323tRZncLooybuyzKJ2+ADwSDlZJgsk8bguR9YeUgcHiyqZyS
 rfMHmL6Ql/p7byHpKaL+fy0ZnvGKlJndrfG59jikrNQNISQbcjx365xtxBjCoPKhzScF
 TS1Yl/Uf+xiLwoPzDoaG3ZmxuWC3h8JUrXb1IOwSo6NwOE4BaxD7CjeFfL2z1vnSBiXa
 427dpnLYq2XyoiWcq/YpFrBn0gwa9ktFq99g2K/afOjS2gWKB4GzrOvALBntf2QKQXRK
 B+SNdElD90T23AAbgkoGQKs0Fh0bMZClZcFEcPxxOShCIrauvb4sAcf/fpijtcKU4Ygm
 rDUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version;
 bh=/nCGBwD162szJNn9Qs6BTAgC+93fO08EX9M68ZjPe5Y=;
 fh=yi1FVJZMrtPj1cVEjcjEk1+nVJXgTQD3xa6ZvY5nRu4=;
 b=gPCtA0GeL+5Q319JmS95v7y3JkZQKUoI+O11oId1htbe9NATd4xEkC3XjdMAdf3Wc3
 kEUmMqMznBsgzVPI6E8Ox5wtWSA79lyKjDOl/bfDemKAYhjv6anlmv4oN7Jiql4iCFSm
 7j+HI7rFXGl8rCR/ci72F/2LIwUQFGTYtx4V8YoEtY/aUNplzyUpkZ7c5vmvmpBX8Ay3
 rH9M8MHq/2nv5IMnyCRJh8M81pTfhteyY/Gfn/w+B2FdAyf0ZIv7yEKNwBE84nnoEIvk
 Lj3JVYCH5BKdHSpiicCYSYf0KRSRKY7IJAYjCe0pdlMkbRT3JrTg4wZ6QpLGhtGojUxR
 /8VQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781683891; x=1782288691;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=/nCGBwD162szJNn9Qs6BTAgC+93fO08EX9M68ZjPe5Y=;
 b=fy4hZ9MQ9l+iCJ75WYJSlg3naKDNkXlSkSeq/I6vd+DCxkDvZYr4VIKryUmOwkNitM
 qk39L4RB6r9pdw4GKu61XBYtfN5fmUhYL5KfZptZkfwNxUCg5lxSDcLVi3tglQKz1zHP
 PF24wfGwdnvkA7yw39kESDRfxo6WDjkJGle/uDjubc4sqdfH4DJlndlKAU4BKGpLBShs
 w9qm6TE36pO6C3epi9HKFO18Wd9titetyo5Ih6LSzyzDv8EqFMEtEUK0QuJiG2/B2ciK
 +JbTDb15CasN0oL/e0nW0uZJl6kZLRXsbR3VGlfJaFu6CL07YbLViLA580/8LvS7Q63z
 tExQ==
X-Forwarded-Encrypted: i=1;
 AFNElJ8S/GQSO6Rc4mNPEDGxuZ4whyHEqy9Ldu7fE7r4Gghx68Dh0E7qRou5Xx1A7dCQWxIM/T746fu164U0xWZ0FLM=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxCN9LulaDi/lcrI+h5zqUt6TZYWo4CQs1idTgbcAL6G0SDYHbc
 PRY/0yGzUE4jmW+iqXpjnny6Jt2apSrFTKitp4JIbFF5EXhSFWP4FXJ5GwUMNGo4AX8gHq0QDVz
 dWbjJBe5Me9k28FH2wIu3iAP8bexYEugAfPyqP3Lmhhg7HUR4ltmLsIqD7ING1yVu5Cyu1nfa8G
 2UxJD798yfhMlPQbSoRkgX8w0tuNou7TZ59ehD8sOaF1Y42bruI2q+S3UO0OY83Q==
X-Gm-Gg: AfdE7cm0/OmiP7UwnJvGYFN204uH4DsocAaYnX/Haxpv1xx6uU8YaKhzzRQNobREc00
 5tnBwc29PBrX6M5dlBCRSJFDfxpAOEe/E+9+RsROrZTL8d1jZAqWfdMjqjGDaG6RFe3oWcQrIsA
 Raql4OI0LDcKIuOsAmqqmHC52tnIynJ7CAcfwzyoanidER2CmVcw5h3hbx49YUzzOozg==
X-Received: by 2002:a17:907:b598:b0:bee:1e36:876c with SMTP id
 a640c23a62f3a-c05a4c1703cmr127658266b.41.1781683890997; 
 Wed, 17 Jun 2026 01:11:30 -0700 (PDT)
X-Received: by 2002:a17:907:b598:b0:bee:1e36:876c with SMTP id
 a640c23a62f3a-c05a4c1703cmr127657366b.41.1781683890615; Wed, 17 Jun 2026
 01:11:30 -0700 (PDT)
MIME-Version: 1.0
References: <20260616220827.1647052-1-robert.malz@canonical.com>
 <IA3PR11MB8986729EE79F3F3FBAAC68C9E5E42@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986729EE79F3F3FBAAC68C9E5E42@IA3PR11MB8986.namprd11.prod.outlook.com>
Date: Wed, 17 Jun 2026 10:11:19 +0200
X-Gm-Features: AVVi8CermetHG1NdOVU95fywiNV30CBfr7FnKauDUwLoMzw0Bom8jxXphJvrdgA
Message-ID: <CADcc-bzhOdYshOJAZidJys4SckKjGRgq=i+wCHDgdYHrPXn8cg@mail.gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1781683891;
 bh=/nCGBwD162szJNn9Qs6BTAgC+93fO08EX9M68ZjPe5Y=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=DHuZ/qzgWme8hZ39CIFu8hBHPVDXeE/CesbwTsVXyY8rKDj74RtohDgPGfOyj9Px3
 tQ6+/fVQWW/YDAH8Mxs4QI+TLLXo1HWyVseMoH6BI/j31jGaUAdylLSxYzFUIqe8iI
 jJGw4vDbd7Y4KkplJikzUshZu+LA6UzsJ55djToSZtsF47PBKwS44f26B3P/P2pYNB
 WpyRlSA4jOmwI7kw9g33DOG+ggvSuAnEeWkEI4rbEmdEWC2tTQbgxQAeAwOxKsszA5
 FqjuOscVuYnDrlho9EM4HHq1WGlF9DuBaW3Y8ICz4eOvvcT1qrZz7hovBeZQJL5BaV
 hVyd1MMwPANx4rZPC4smgiFc5Z/9Q5JFLDHX8Hqv1ThSdGu3jX7gyDe5Gr/DO+49U7
 wdFHEW6rOK70jtCINsSAssO9TsS95HKoxz6M07Xe18iS1xKVN0lb/8xMprUl4/9yXj
 I/dwqNyHlIMpnOIIxMVIC+v4fBNIPP8OG9yhS5at6S4gMPorN9TCXyF7TIdnCCseVt
 ku3zDHnBhi9WZpRgAH+e4StS8YevcTQiIl3c+Iqh27McFa9KnuTACOtASWWt/atiOK
 Tr7wibkS/NbFnF+A+9ACdJziG5DQlPbtdZdPU9A3jTiNkIll1LZKOCNl8JxN7JYMI8
 xWxPpXe7pKlZhX0rJf0pqdG0=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=DHuZ/qzg
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: retry reading NVM if admin
 queue returns EBUSY
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
From: Robert Malz via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Robert Malz <robert.malz@canonical.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[canonical.com:replyto,canonical.com:email,intel.com:email,osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp,osuosl.org:from_mime];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[robert.malz@canonical.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 838D2697747

(resend)
Hey Aleksandr,
Thanks for taking a look at this.
exit loop, just like in OOT, happens during:
> if (hw->adminq.sq_last_status !=3D LIBIE_AQ_RC_EBUSY ||
>    retry_cnt > ICE_SQ_SEND_MAX_EXECUTE)
> break;
And by the way, I have v3 ready, which I plan to send 24 hours after
the initial submission, it doesn't change any code but I want to keep
the netdev bots happy.

Thanks,
Robert


On Wed, Jun 17, 2026 at 9:47=E2=80=AFAM Loktionov, Aleksandr
<aleksandr.loktionov@intel.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> > Of Robert Malz via Intel-wired-lan
> > Sent: Wednesday, June 17, 2026 12:08 AM
> > To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel,
> > Przemyslaw <przemyslaw.kitszel@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org
> > Subject: [Intel-wired-lan] [PATCH v2] ice: retry reading NVM if
> > admin queue returns EBUSY
> >
> > When the admin queue command to read NVM returns EBUSY, the driver
> > currently treats it as a fatal error and aborts the entire read
> > operation. This can cause spurious NVM read failures during periods
> > of high firmware activity.
> >
> > Add retry logic to ice_read_flat_nvm() that handles EBUSY responses
> > from the admin queue. When an EBUSY error is encountered, release
> > the NVM resource lock, wait for ICE_SQ_SEND_DELAY_TIME_MS, re-
> > acquire it, and retry the failed read. The retry is attempted up to
> > ICE_SQ_SEND_MAX_EXECUTE times before giving up.
> >
> > Code was extracted from OOT ice driver 1.15.4 release. Additional
> > change was made to reset last_cmd in case of retry to make sure that
> > all commands are retried properly.
> >
> > Fixes: e94509906d6b ("ice: create function to read a section of the
> > NVM and Shadow RAM")
> > Signed-off-by: Robert Malz <robert.malz@canonical.com>
> > ---
> > Changes in v2:
> > - change ICE_AQ_RC_EBUSY -> LIBIE_AQ_RC_EBUSY
> >
> >  drivers/net/ethernet/intel/ice/ice_nvm.c | 25 +++++++++++++++++++--
> > ---
> >  1 file changed, 20 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c
> > b/drivers/net/ethernet/intel/ice/ice_nvm.c
> > index 7e187a804dfa..b3120605d66f 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_nvm.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c
> > @@ -67,6 +67,7 @@ ice_read_flat_nvm(struct ice_hw *hw, u32 offset,
> > u32 *length, u8 *data,  {
> >       u32 inlen =3D *length;
> >       u32 bytes_read =3D 0;
> > +     int retry_cnt =3D 0;
> >       bool last_cmd;
> >       int status;
> >
> > @@ -96,11 +97,25 @@ ice_read_flat_nvm(struct ice_hw *hw, u32 offset,
> > u32 *length, u8 *data,
> >                                        offset, read_size,
> >                                        data + bytes_read, last_cmd,
> >                                        read_shadow_ram, NULL);
> > -             if (status)
> > -                     break;
> > -
> > -             bytes_read +=3D read_size;
> > -             offset +=3D read_size;
> > +             if (status) {
> > +                     if (hw->adminq.sq_last_status !=3D
> > LIBIE_AQ_RC_EBUSY ||
> > +                         retry_cnt > ICE_SQ_SEND_MAX_EXECUTE)
> > +                             break;
> > +                     ice_debug(hw, ICE_DBG_NVM,
> > +                               "NVM read EBUSY error, retry %d\n",
> > +                               retry_cnt + 1);
> > +                     last_cmd =3D false;
> > +                     ice_release_nvm(hw);
> > +                     msleep(ICE_SQ_SEND_DELAY_TIME_MS);
> > +                     status =3D ice_acquire_nvm(hw, ICE_RES_READ);
> > +                     if (status)
> > +                             break;
> > +                     retry_cnt++;
> It looks like you added the retry_cnt increment but you didn't add it int=
o the loop exit condition.
>
>
> > +             } else {
> > +                     bytes_read +=3D read_size;
> > +                     offset +=3D read_size;
> > +                     retry_cnt =3D 0;
> > +             }
> >       } while (!last_cmd);
> >
> >       *length =3D bytes_read;
> > --
> > 2.34.1
>
