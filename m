Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id y0dDMIxfV2qHKgEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 12:23:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 718E275CEF6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Jul 2026 12:23:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=qvmGLEii;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 19C2F809BD;
	Wed, 15 Jul 2026 10:23:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id YNPbCcgc5pbP; Wed, 15 Jul 2026 10:23:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80D7B80D15
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1784110980;
	bh=fZC27ShXa7hl4qW+78jwKRMiG2RSdKURS3G8/4lCd3w=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=qvmGLEiiAmWHWfAfe0jcUUynyhgY/Q8DeXLmvkrNlmWio/ziMfZq5+G9zd7FDUSYT
	 UNBiCp6k8bVIgcay7EE7U5h0dggDwwFOlzkkew2CccX+OQfqj5i2Yl7m8dWzJL2F0R
	 iHVsBn1PfvVl7u+Xu+ynPVTe7TspflLnhjJYmyZwnvytt8DlJ8cScfuBYMenrdK3nV
	 WLBtbsx6DC61bO4DrHJ9LsgxhOUAJ95l2lY7Dh+qvm0iScKn/qNKv1zZpq3/1lpZpu
	 I+wEiKf9XwPKtk5EYjS/UOkr7MooF8RZIL1q9EYqfhUX/NBFGdLiOGV91KOiSdy5X2
	 xFQwG7WNv8teA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 80D7B80D15;
	Wed, 15 Jul 2026 10:23:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 46C7E203
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 10:22:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 32B406065A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 10:22:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id l9a34kwHzVm6 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Jul 2026 10:22:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.123;
 helo=smtp-relay-internal-1.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C62E5605F9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C62E5605F9
Received: from smtp-relay-internal-1.canonical.com
 (smtp-relay-internal-1.canonical.com [185.125.188.123])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C62E5605F9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 10:22:57 +0000 (UTC)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 9FE993F620
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 10:22:54 +0000 (UTC)
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-c162ff98c4fso435302566b.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jul 2026 03:22:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1784110974; cv=none;
 d=google.com; s=arc-20260327;
 b=iP90va9wtpqR4J50mKyq6G7DYVUPyhk8frIiX6ypo/MBCjB9vpB75HpKHpo0D8I7G+
 zrm6nMZSlyVDOudwQLXL5fClZ4DPvyN2tMnd1RnlFMxqK8n6qnXXFRQ0uZFz9MtLH7LV
 wNMLGzbijGzWwCISawQf2qUEM6FIbLT4OvrPYEE0s41OF6pZLYe7nUjCNfKtvFzekYND
 av7D0EuooTCsyCyOsaliA+WcCISl3lyIbEyulsZBlkketHFaZXKtHEuWEw8Zyc8CM8i2
 dFt8lF9VgFucFlWYhOTWPbe/Ub9f7vX46qKCRvkL/jAhpYcQHpDvnwIyvlIuMemEDg3C
 +xIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20260327; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version;
 bh=fZC27ShXa7hl4qW+78jwKRMiG2RSdKURS3G8/4lCd3w=;
 fh=nmfC6a8g7YwkRZDMLhBC9Vua400zxjRv0ABt8Se/Ruo=;
 b=qJnXfmkJeaMWZhWHRH1gflqTfnNeL2D7aU9VQoPilbMyIyamS0WYlV81zT8N+tUwmX
 3GqrkNmNsTglIiR4OZrYx3AtD05seBkoIsfiaf3zkNVhAwdQMEgUjilTo7fb/pQ7C4vR
 F8YpRkT0u7vboJc9u24EXt2Kr2TSq8nKSXsaK+ZEMswRyENBYM6fr8fBKbAssRbkRGv2
 hARIgHn+0uENzKoNsQaxTqtWBCNmfrFsW7WODilCZOw92x+00/L89C2UnL0EtcTxUbpE
 oqbIALY0y6AzxgxT8xPv8UYV067QWNb20EPCvaZxHGjRWA6GoNOR29A/eo1yh0uTO+h3
 yQww==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1784110974; x=1784715774;
 h=content-transfer-encoding:content-type:cc:to:subject:message-id
 :date:from:in-reply-to:references:mime-version:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
 :content-type;
 bh=fZC27ShXa7hl4qW+78jwKRMiG2RSdKURS3G8/4lCd3w=;
 b=XL0XpJ+WCX9Y6JsutDGDYSdMvQlIOUeua0fl5BsuciioeML6vbwGn2g1GtAfIf1pG1
 A9S7th+rzGyC1NSuJ8MY1JaafLWmCGR4cOMIup2xlPTexHt6gFM5zqhkR1xy/y807P1G
 DasCgsupFk+pVvmpAjmdzTVcQXlSELDb/lGnBGvZNH/jYLIxPXplDFnyNyPjjmgtJ6Tw
 Upn0xAjt8z0XVRV75E3vAB1M9/2oGkSJnOWII+J/SkP4S1honRHjfvJSzEVhtDp91zrL
 2K5H8F7qhqc+AHD3otvHcIxbpf87CAbmcpKeumwJk4oCYmmjONjJ+y1DSOy0dxSmjeGX
 OqXA==
X-Forwarded-Encrypted: i=1;
 AHgh+RqvjsoNuInwifqVzPzwTne7pn6RenSs30CUpD13KGQhpwb9zIoqqGZqQm4eZHbB5bKxYjXehijKB5ESk4jwbHI=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzylK1Myju8i80FK9GiBJlXLI+eG7npiUiean7Eza89Xcx2ZyPD
 oo7X9yJCFd/qOenFAu6DCqkW8uMocpJRS8qAwzbKKMxdYwt2PLV9+sAU25nmiHD4zdCC0FBDBSY
 GQD3L7efKJdtveuMBdH0+6yLgtgH+J2n6PsTmGeGPlV5JRUoppRNJ0aEFAj4ES909ekLBcc4YKg
 VJi+uLpxCNi58aL9+/1ef/YJv5EdJAbMCrdsNn4Aog8G++etyyv0EyBTYpU69+Lw==
X-Gm-Gg: AfdE7clXCYsfIxItL/EY/HNifmPtlsbZAFm2hKf+MbOY1VMPnMy0hSxqmdGQgMObD4I
 KSm0su6FcXYeJKquKBcSsksITM8tnGN9NaaE2RjJtjP30XYsM5sMSfYQj9y2T7MiraCiFehXwSe
 uoGC6mnEa10nfPi7ZpamGHr7c0qQWEh6mVd1r3QiklP/yQcQw1/N6CyTB7oau86wwLJAdt
X-Received: by 2002:a17:907:6d26:b0:c12:713b:e199 with SMTP id
 a640c23a62f3a-c16616a3b18mr421708166b.25.1784110974064; 
 Wed, 15 Jul 2026 03:22:54 -0700 (PDT)
X-Received: by 2002:a17:907:6d26:b0:c12:713b:e199 with SMTP id
 a640c23a62f3a-c16616a3b18mr421705666b.25.1784110973609; Wed, 15 Jul 2026
 03:22:53 -0700 (PDT)
MIME-Version: 1.0
References: <20260703103245.374800-1-robert.malz@canonical.com>
 <bc89cccb-3f22-42c9-9f96-382586d12fcf@intel.com>
In-Reply-To: <bc89cccb-3f22-42c9-9f96-382586d12fcf@intel.com>
Date: Wed, 15 Jul 2026 12:22:42 +0200
X-Gm-Features: AUfX_myIE6AiN9iz-hnLIP40Cqa9z96HpTUcSSSXEmslFfKlKzSUSBFpuMLkV9w
Message-ID: <CADcc-bxLMg1NujF+jE2rOXGc38quv_XqZfv5K+yGQFfhc03avA@mail.gmail.com>
To: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>,
 Jacob Keller <jacob.e.keller@intel.com>, 
 Jesse Brandeburg <jbrandeb@kernel.org>, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1784110974;
 bh=fZC27ShXa7hl4qW+78jwKRMiG2RSdKURS3G8/4lCd3w=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=CZxq1ET2dVhqq/XR1QaV/aivsbZrJ2rGEVNzhH0BJg5KQ64ZJUMvKedw7xOkQtKaq
 /k4XyOaG2wwSbBfx0NrqGhsKy7HurviDDzFbPNhpHEO1HgIZ5vWOsr+V+m8IzWqoCp
 3aVKmTKkLkGmH0qbBvCPxbkmlS3Hg4mdYTNymgiudb8/6CncLLk5Lmk1nquJ9x2JiH
 XxI521rJM2MVzprGrJR+0dWzIZnKTKNTD+3UGHSUe2zmyPv2cxqQBqXZV4IH34bocv
 fOAlIOoDKrlwwDMdWsV69sf1TAM4uXrccshg4B/r27OzGnfcc6M6AKs7kID5A+kmlm
 BSL/RbwM7UdP9iyWgYIOCWXkgh9b+3WmkxF2amNadmyIGwRRUayEDa6RkBr7AJgrns
 gtYmXtpUhpUSlPxMOO2BKZ9P/UIw7DtcY+e8f/XvYG8S2S2B/X+EIAXxhQuyTJSSid
 SlTJmlR82b/tt+bEnnAxu9tDV7rJVyILodhKfBlH364rffj52fRfhsl/RnZn6w2wNn
 ZzcR3iVh1MpILtcOJLX1qP0oVT+f/5yj5hSP6EWmefEJ/G3bPMYlWGRXxt1QzTthax
 F6qVvQrCeyBQrlYjzRLC74cZKEvQSzqwDdNEoSsK3OXxvuMtBGouR7W9SqLhtG6p4C
 RlSSikZlxAiKC2se/vuqlH18=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=CZxq1ET2
Subject: Re: [Intel-wired-lan] [PATCH iwl] ice: acquire NVM lock around each
 flash read
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
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:aleksander.lobakin@intel.com,m:jacob.e.keller@intel.com,m:jbrandeb@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email,osuosl.org:from_smtp,osuosl.org:from_mime,osuosl.org:dkim];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[robert.malz@canonical.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 718E275CEF6

Hey Tony,
Thanks for the review.

On Wed, Jul 15, 2026 at 1:47=E2=80=AFAM Tony Nguyen <anthony.l.nguyen@intel=
.com> wrote:
>
>
>
> On 7/3/2026 3:32 AM, Robert Malz wrote:
>
> ...
>
> > @@ -92,12 +98,28 @@ ice_read_flat_nvm(struct ice_hw *hw, u32 offset, u3=
2 *length, u8 *data,
> >
> >               last_cmd =3D !(bytes_read + read_size < inlen);
> >
> > +             status =3D ice_acquire_nvm(hw, ICE_RES_READ);
> > +             if (status)
> > +                     break;
> > +
> >               status =3D ice_aq_read_nvm(hw, ICE_AQC_NVM_START_POINT,
> >                                        offset, read_size,
> >                                        data + bytes_read, last_cmd,
> >                                        read_shadow_ram, NULL);
>
> Sashiko says:
>
> If this chunk has last_cmd =3D false, doesn't releasing the NVM lock
> immediately
> after ice_aq_read_nvm() allow other entities to acquire the lock and issu=
e
> their own NVM commands in the middle of our open read sequence?

[RM] I do think that is intended behavior. Reads should not be
stateful and there is no open read sequence to interrupt.
Each ice_aq_read_nvm call takes an absolute offset from the starting point.

> Also, if ice_acquire_nvm() fails on the next loop iteration, the loop bre=
aks
> and we never send a command with last_cmd =3D true. Will this permanently=
 leak
> the sequence state in the firmware?

[RM] I don't think there is a leak as there is no FW read sequence
state. As far as I know, lack of last_cmd does not leave anything
dangling in the FW.

>
> [TN] I'm seeing conflicting documentation on whether this bit matters
> for the read command. I'm working on getting clarification. If it does
> matter, we'll likely need to adjust this.

[RM] I'm happy to adjust the patch once you have more details on it.

>
> > -             if (status)
> > +             if (status) {
> > +                     /* ice_release_nvm() issues an AQ command that wo=
uld
> > +                      * overwrite sq_last_status, which some callers
> > +                      * inspect after a failed read. Preserve the read=
's
> > +                      * AQ error across the release.
> > +                      */
> > +                     aq_err =3D hw->adminq.sq_last_status;
> > +
> > +                     ice_release_nvm(hw);
> > +                     hw->adminq.sq_last_status =3D aq_err;
>
> Does restoring hw->adminq.sq_last_status here without holding the Admin
> Queue
> lock risk overwriting the status of a concurrent AdminQ command?
> If another thread acquires the lock and sends a command immediately after
> ice_release_nvm(hw), this lockless write could corrupt its error status.
>
> [TN] I don't believe the AQ lock will work as desired we can't guarantee
> that we will have the lock directly following the release in order to
> restore the AQ error. Similar to the NVM lock issue, I think this is a
> small window but wanted to bring this here in case others had
> thoughts/comments on this.

[RM] Agree, this can cause issues. We can't drop sq_last_status as
ice_discover_flash_size depends on it.
Proposed fix: drop the save/restore sq_last_status and propagate the
read AQ error through a real return path instead of the shared global.
I could add optional enum libie_aq_err *read_aq_err out param to
ice_read_flat_nvm(), capture sq_last_status before the
ice_release_nvm, and have ice_discover_flash_size() test that instead.
The log-only callers (devlink/ethtool) don't care about it.
Let me know what you think about it.

>
> Thanks,
> Tony
>
> >                       break;
> > +             }
> > +
> > +             ice_release_nvm(hw);
> >
> >               bytes_read +=3D read_size;
> >               offset +=3D read_size;
>
>

Regards,
Robert
