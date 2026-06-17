Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Dy8UMPJTMmqYygUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 09:59:46 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0423F697536
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 Jun 2026 09:59:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="sh/P+8mO";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5FA9584FE3;
	Wed, 17 Jun 2026 07:59:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nJDbjplMznKZ; Wed, 17 Jun 2026 07:59:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A74398500B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1781683183;
	bh=ArI4RcMY2egS5qlb79Yj8HpOHBFqJbiEnj9zCGat2vM=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=sh/P+8mOSqtX2aG0GfsBqeH1ueQeK3ZqOhrSRnSA6wzkTDlzxN8hE2U2J+k1VXi+h
	 6ZEzU0ChjUPlGsgQq1OaaXkSx/J7mqhLZ427Oj7EyEuS+bDBO9w40HvwEDGMWBf3Ri
	 x0XoMyQWNb0ph5gfM3zYIUhzYWyH44NbwqLE9hNRuXH7jKKyBG1ArHXfvG2//jDS16
	 W7sTepr3kTFUjMKQOuw/71KLI7iGnaonvOFaHexlwrrCzLfj29q3+4o4GmWAa48ffd
	 hsVOmTvdXH0LbUKA01xlEhNmhpvjJMqhj8A8veYalyGMff+qqdu4y16ygrTD+CyOHX
	 hH3a6AvEuHSQw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A74398500B;
	Wed, 17 Jun 2026 07:59:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 9FB42D8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 07:59:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 90F2384FB2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 07:59:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FReIKDUgCCzW for <intel-wired-lan@lists.osuosl.org>;
 Wed, 17 Jun 2026 07:59:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org C1C9784F73
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C1C9784F73
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C1C9784F73
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 07:59:39 +0000 (UTC)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A72453F60E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 07:59:36 +0000 (UTC)
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-bec44ccbbd0so447079566b.2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 17 Jun 2026 00:59:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1781683176; cv=none;
 d=google.com; s=arc-20240605;
 b=SC6MWTqq/trmItgqRK+UwBacWB9xCjlBdpbhGhZnub/8y+q5K3bCWaTCl/2V1bvFxB
 KDnWZBQZnncleWr6NdlXxUKYXgTa33c6QLajLMrGSdFBNmdjbsvxrbCR9uxUwY1gJysn
 f+0EOIfjIfR5wGWyDUyg2O9rLW1LBE7lcmbRQSWRLVCaHlCCNgOoPtG0MIibyP1lWYmq
 +6FzfPOfhvBSkWmpGc6IxVTQjrZMUMTKsX7Y6QrO+mJ7lPU5mDa5U+aj0SGo+ZcCirGH
 DybQ6Rdf1XiAcYgXYXqhfIdhh2Z51U2z4rsD9t6ZP3UKJFtyxPEm2j8ewcwfRWagzn/7
 k5Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version;
 bh=ArI4RcMY2egS5qlb79Yj8HpOHBFqJbiEnj9zCGat2vM=;
 fh=2SE6wGcYtUQWOH/o5Et0UPldiI2s3RWvYSzbgeirlCI=;
 b=Woed3NSICyh5/tPbyD9dWiGcZQRKxa8kCxKGFsyOyb1fFfKut8HOtrYerjlCOySg0W
 8XBzf4vhIoPOszKeYPKAhliMWKmWyO7X977xYXHK1txufhgjr50hkcVZueWhfTWR6K5q
 3ksyqhdyLi77JMpT71n+vcxwmayRqgB5hfsAsZkIJIEYP0yjIgS5DHUox6bUrb1pzL1U
 oLy7FYvjZRgVjsAlVklqbArr7E1xaqqMtLTNP3oXfknjRauqi/Xeftcd0hyK3+LPINEh
 X2uFY7K9pUfjuMQc7OrUQH1bT8uSFjdB8Eb9txtJ3387jwdi12SUwu4sCpcjUmbRq/cz
 5RpQ==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1781683176; x=1782287976;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ArI4RcMY2egS5qlb79Yj8HpOHBFqJbiEnj9zCGat2vM=;
 b=Oi6nRrpQRVC+KZBtfpU+9d+sI6YBsU7PJCFmJj+RnvMNuMPI048wUloyUbCMbPTsqc
 Wp9szlKt+Y+TExDUsUy9ZLDLyIhw0kQKhhmdtGv7N+qprVgixYcn15z6ok8hfPBuhHH0
 o7a0QoZqULeCQFYHimCDqiMtk4r1ahmr8SO+fokFS201Ye57AvqGQwO31wP+a66g49Db
 DMMxUdo0WzjvxpVGDe64YuJ6qqSnRO+DwSYqSsGdKqROZT5UOyg297VLyMDl7JasITuL
 qY2c7tJqFtm2JP51ybkq1tedpyNnYOaMv2pMbi51dVrZNW2jje9gmbbufPi9Wk9HOfQZ
 4uvw==
X-Forwarded-Encrypted: i=1;
 AFNElJ+4PMNQIt2u3owDRknlRwRnpTcrWL3t3TYMBDm0MZ2fNRrtbHBp8TcQX1UkLzCOmL3PzRZE9eY7m/RC+Ffl8hc=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yw8YgWau9ZnpICqxVP7vedorSIMbBaRgSlJ8rcxdgT7KqCH3HNh
 0K7vwenYZPLlT+AsfjkL6IAjNWVoTwkzrbFfEiaNTKgwqHXwaw8S24myx0DAxWnqBkp3V0jjVwg
 CrhlSULOiBJi85GL589fN/DA8odknfh8ebiVx7hcWue87yhtdYgDeD75LgV7COizIXaxVNmbBpN
 jeNklNACPmxvPAiPQCwVAZPz+gVwSNwjwj7unF28aOq8IjZkjjrr3vTu8Yp7Nkk8bv4R0G7d59
X-Gm-Gg: Acq92OE7L9fwLpcha+gMLPXadBELeQX5LXjPxKPxe8uzoZ+slCqpGRP6RLGpIUCY/Xj
 M7p+KzOrySnG+sSvUYqPbW9JNcQpZeJOtXJt7zdcrXsETRm3iMnrZCkb/VvmlmJ9dApecbvGKLO
 fV1EdgRN3A7xTZ7KSJx1fJZo4mC1zp0uix07E9eaVKTLsvTnuJCdjsRpON6+oSforfOw==
X-Received: by 2002:a17:907:3f0e:b0:bf1:8145:c300 with SMTP id
 a640c23a62f3a-c05d2182a42mr123276866b.3.1781683176057; 
 Wed, 17 Jun 2026 00:59:36 -0700 (PDT)
X-Received: by 2002:a17:907:3f0e:b0:bf1:8145:c300 with SMTP id
 a640c23a62f3a-c05d2182a42mr123275766b.3.1781683175723; Wed, 17 Jun 2026
 00:59:35 -0700 (PDT)
MIME-Version: 1.0
References: <20260616220827.1647052-1-robert.malz@canonical.com>
 <IA3PR11MB8986729EE79F3F3FBAAC68C9E5E42@IA3PR11MB8986.namprd11.prod.outlook.com>
In-Reply-To: <IA3PR11MB8986729EE79F3F3FBAAC68C9E5E42@IA3PR11MB8986.namprd11.prod.outlook.com>
Date: Wed, 17 Jun 2026 09:59:24 +0200
X-Gm-Features: AVVi8CcSgGY14BHbgnPWHCYginfWFyZM5fIlOjLEQbCEHuVHhA6hnScYZ6nOyR4
Message-ID: <CADcc-byvovDMvYnVfbMmp3uppkzE16xScb=MjQfB34bbW_BqDQ@mail.gmail.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>, 
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Content-Type: multipart/alternative; boundary="000000000000caa92606546e70b4"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1781683176;
 bh=ArI4RcMY2egS5qlb79Yj8HpOHBFqJbiEnj9zCGat2vM=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=fCIsCoYnTDqoHCVL9Pkh8SFilISPjhwDKVZzckRfEc0z+LzYlh58c5c4llKKwdtgY
 EaXPcGcHxuoUVSCrZDR+kPIFrY90MlA7BrrhoNhf2d7D2MIjzH6ZSNCK+G4m3ESR0y
 tnQ1/20IEUcwlFOVRIGThRV7Nto+K/p8iKJIvFVO8mrVLQQe3Ww6ROaJdi953LPsKi
 6CuOO2Tovn2jV6FqC6U6tMzySEeJVhRETcKtS0Mj7D3khBDFwG7xKdG7wutOdwCfT8
 Ar2d5tn5hGiVwekU/OvJeSxIFHX+/6FEzwlBEzTDCHfi93uj77zhqEt8uFhUY9h25S
 lQ8TL/5JtO9/Qiqqe0pocYrkLY2mhW+yqn0SK5hUlPHF2Tl7iG6XdVKyqJ2QQ1i1/4
 maDBpxlzkRca7E43H6VhzI97/4f6LJ/heBjOW6d1B2u8nLCh5nv3AVkoWZuaTeK6oQ
 ciGxUt75JXXwC1OCjwHPaUo3p9rEib1qr2ag1ZgJAlXK/WySptmJ43zfwMLTyZ8GGU
 k8W0/i/ZKv32pGQR7AYkDkd1KuArp/B+yxWm8nEwRQxXd+K7eChRDR2z0EepKdnV0Y
 jH3DNLWEEyKGQ7wFCoav2TPFe5bigLskVzE3tLzbuj9UOM16ZCTlbvgpC5y4EifZDX
 dwhUT0qcI/qMRYub6xWL/uUA=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=fCIsCoYn
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[multipart/alternative,text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[canonical.com:replyto,canonical.com:email,mail.gmail.com:mid,intel.com:email];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	HAS_REPLYTO(0.00)[robert.malz@canonical.com];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0423F697536

--000000000000caa92606546e70b4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Aleksandr,
Thanks for taking a look at this.
exit loop, just like in OOT, happens during:
> if (hw->adminq.sq_last_status !=3D LIBIE_AQ_RC_EBUSY ||
>    retry_cnt > ICE_SQ_SEND_MAX_EXECUTE)
> break;
And by the way, I have v3 ready, which I plan to send 24 hours after the
initial submission, it doesn't change any code but I want to keep the
netdev bots happy.

Thanks,
Robert

On Wed, Jun 17, 2026 at 9:47=E2=80=AFAM Loktionov, Aleksandr <
aleksandr.loktionov@intel.com> wrote:

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
o
> the loop exit condition.
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
>

--000000000000caa92606546e70b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hey Aleksandr,</div><div>Thanks for taking a look at =
this.</div><div>exit loop, just like in OOT, happens during:</div><div>&gt;=
 if (hw-&gt;adminq.sq_last_status !=3D LIBIE_AQ_RC_EBUSY ||<br>&gt;=C2=A0 =
=C2=A0 retry_cnt &gt; ICE_SQ_SEND_MAX_EXECUTE)<br>&gt; break;</div><div>And=
 by the way, I have v3 ready, which I plan=C2=A0to send 24 hours after the =
initial submission, it doesn&#39;t change any code but I want to keep the n=
etdev bots happy.</div><div><br></div><div>Thanks,</div><div>Robert</div></=
div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" c=
lass=3D"gmail_attr">On Wed, Jun 17, 2026 at 9:47=E2=80=AFAM Loktionov, Alek=
sandr &lt;<a href=3D"mailto:aleksandr.loktionov@intel.com">aleksandr.loktio=
nov@intel.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><br>
<br>
&gt; -----Original Message-----<br>
&gt; From: Intel-wired-lan &lt;<a href=3D"mailto:intel-wired-lan-bounces@os=
uosl.org" target=3D"_blank">intel-wired-lan-bounces@osuosl.org</a>&gt; On B=
ehalf<br>
&gt; Of Robert Malz via Intel-wired-lan<br>
&gt; Sent: Wednesday, June 17, 2026 12:08 AM<br>
&gt; To: Nguyen, Anthony L &lt;<a href=3D"mailto:anthony.l.nguyen@intel.com=
" target=3D"_blank">anthony.l.nguyen@intel.com</a>&gt;; Kitszel,<br>
&gt; Przemyslaw &lt;<a href=3D"mailto:przemyslaw.kitszel@intel.com" target=
=3D"_blank">przemyslaw.kitszel@intel.com</a>&gt;<br>
&gt; Cc: <a href=3D"mailto:intel-wired-lan@lists.osuosl.org" target=3D"_bla=
nk">intel-wired-lan@lists.osuosl.org</a>; <a href=3D"mailto:netdev@vger.ker=
nel.org" target=3D"_blank">netdev@vger.kernel.org</a><br>
&gt; Subject: [Intel-wired-lan] [PATCH v2] ice: retry reading NVM if<br>
&gt; admin queue returns EBUSY<br>
&gt; <br>
&gt; When the admin queue command to read NVM returns EBUSY, the driver<br>
&gt; currently treats it as a fatal error and aborts the entire read<br>
&gt; operation. This can cause spurious NVM read failures during periods<br=
>
&gt; of high firmware activity.<br>
&gt; <br>
&gt; Add retry logic to ice_read_flat_nvm() that handles EBUSY responses<br=
>
&gt; from the admin queue. When an EBUSY error is encountered, release<br>
&gt; the NVM resource lock, wait for ICE_SQ_SEND_DELAY_TIME_MS, re-<br>
&gt; acquire it, and retry the failed read. The retry is attempted up to<br=
>
&gt; ICE_SQ_SEND_MAX_EXECUTE times before giving up.<br>
&gt; <br>
&gt; Code was extracted from OOT ice driver 1.15.4 release. Additional<br>
&gt; change was made to reset last_cmd in case of retry to make sure that<b=
r>
&gt; all commands are retried properly.<br>
&gt; <br>
&gt; Fixes: e94509906d6b (&quot;ice: create function to read a section of t=
he<br>
&gt; NVM and Shadow RAM&quot;)<br>
&gt; Signed-off-by: Robert Malz &lt;<a href=3D"mailto:robert.malz@canonical=
.com" target=3D"_blank">robert.malz@canonical.com</a>&gt;<br>
&gt; ---<br>
&gt; Changes in v2:<br>
&gt; - change ICE_AQ_RC_EBUSY -&gt; LIBIE_AQ_RC_EBUSY<br>
&gt; <br>
&gt;=C2=A0 drivers/net/ethernet/intel/ice/ice_nvm.c | 25 ++++++++++++++++++=
+--<br>
&gt; ---<br>
&gt;=C2=A0 1 file changed, 20 insertions(+), 5 deletions(-)<br>
&gt; <br>
&gt; diff --git a/drivers/net/ethernet/intel/ice/ice_nvm.c<br>
&gt; b/drivers/net/ethernet/intel/ice/ice_nvm.c<br>
&gt; index 7e187a804dfa..b3120605d66f 100644<br>
&gt; --- a/drivers/net/ethernet/intel/ice/ice_nvm.c<br>
&gt; +++ b/drivers/net/ethernet/intel/ice/ice_nvm.c<br>
&gt; @@ -67,6 +67,7 @@ ice_read_flat_nvm(struct ice_hw *hw, u32 offset,<br>
&gt; u32 *length, u8 *data,=C2=A0 {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 inlen =3D *length;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0u32 bytes_read =3D 0;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int retry_cnt =3D 0;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0bool last_cmd;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int status;<br>
&gt; <br>
&gt; @@ -96,11 +97,25 @@ ice_read_flat_nvm(struct ice_hw *hw, u32 offset,<b=
r>
&gt; u32 *length, u8 *data,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 offse=
t, read_size,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 data =
+ bytes_read, last_cmd,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 read_=
shadow_ram, NULL);<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (status)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0break;<br>
&gt; -<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0bytes_read +=3D read_=
size;<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0offset +=3D read_size=
;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (status) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (hw-&gt;adminq.sq_last_status !=3D<br>
&gt; LIBIE_AQ_RC_EBUSY ||<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0retry_cnt &gt; ICE_SQ_SEND_MAX_EXECUTE)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0ice_debug(hw, ICE_DBG_NVM,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0&quot;NVM read EBUSY error, retry=
 %d\n&quot;,<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0retry_cnt + 1);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0last_cmd =3D false;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0ice_release_nvm(hw);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0msleep(ICE_SQ_SEND_DELAY_TIME_MS);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0status =3D ice_acquire_nvm(hw, ICE_RES_READ);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (status)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0retry_cnt++;<br>
It looks like you added the retry_cnt increment but you didn&#39;t add it i=
nto the loop exit condition.<br>
<br>
<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0bytes_read +=3D read_size;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0offset +=3D read_size;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0retry_cnt =3D 0;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0} while (!last_cmd);<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0*length =3D bytes_read;<br>
&gt; --<br>
&gt; 2.34.1<br>
<br>
</blockquote></div>

--000000000000caa92606546e70b4--
