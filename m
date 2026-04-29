Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kMQDKtF/8Wk2hQEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 05:49:37 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9CB48ECAA
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 Apr 2026 05:49:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F34D41F90;
	Wed, 29 Apr 2026 03:49:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RLU58hfEkuRz; Wed, 29 Apr 2026 03:49:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA84D41F94
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777434574;
	bh=OieD6dy4kgRnLfBJqkyKmCw15BeoKWXt1QJY2qpfM9o=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=83Z9I7kSybwx95SniDGZX3ucgAsQ3uSR20CKMmm0dk6KzfFkmVTjKTRnsjKZOEG6p
	 mbFqHnFiwSPXRdh5Mo9L63MTC2lDmHgAcKSXSjVpOJyvBAPZDq6+9UCgsucQkrL7xD
	 LdBZp3EDh6sjCv5AaI8K1yMHuDiTZHBnm28f2D/nZ5gXBMG7Z8T9SosrH5nAKhf9/s
	 9H4nENd39083CjN/+4dlXQyZZ6xWhFAE9aBbdEE9IQf60Cx6DyB08LrtTc+vNfkjLw
	 z+xDolCQRIufhljlxu2iDHzv2YAHgw1YpC9lDTqfnPzyv9DNhQ1WK3J1mHMXv3cSq2
	 pfbK/v1tdt4Og==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA84D41F94;
	Wed, 29 Apr 2026 03:49:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6A91E23D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 03:49:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5098C408B9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 03:49:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4ip5icp3bPID for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 Apr 2026 03:49:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com; envelope-from=aaron.ma@canonical.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D1AA04056D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1AA04056D
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1AA04056D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 03:49:31 +0000 (UTC)
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com
 [74.125.82.199])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id E82983F7D9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 Apr 2026 03:49:29 +0000 (UTC)
Received: by mail-dy1-f199.google.com with SMTP id
 5a478bee46e88-2bda35eab74so536820eec.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Apr 2026 20:49:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777434568; cv=none;
 d=google.com; s=arc-20240605;
 b=kKhbdmG+Xw5ggV/o8bgH6t7ZKvBXCi4n8c4vTAhNK+LlkEm6O7pX3py4SD/ySRcAiN
 Q0uFGKwgFENDG6NcuifhKX/qR+01dB1XOhKyp24HIRV9zvzU5EyPqtxFPEEsjQkMbU5q
 dw5tvNIWIR+X9fyH3VeX5ONBZoHqSbET70qP9TMrbbgJkj3BYmSJW8Br84768j23KkQM
 lgAkrrVMqiIC6xaUNcEnopOqY3OiPn3tsRdeg2y7Vem1eTwcr+GtdjC27gQkCq0ZsOId
 iMDiGIL3fi0row8OscGr/pSkq6s1vZXYHWn5/DRDDwacZAci8DLhdn03zTwNKME6O9Nu
 9sqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version;
 bh=OieD6dy4kgRnLfBJqkyKmCw15BeoKWXt1QJY2qpfM9o=;
 fh=tAsFpbeGqN0xveceuVC/z73BKbxLhTypAHscKyXxa+s=;
 b=hlftVbDxxW6REix24NW9wATz9wPoaoK6mMgzWqbPrFLzOg0/ChIJSFNCsLqqicTcbR
 M9dsWsOGobJIHLlCv2hxtqxmLDglF1NkD8+JLML5OJQ7D5petzjTzLQZOMRTlAMYsUaO
 tMfi+cBX3suQeLtVFyQEleVKMzW3h2J8b4ijMH5XjoE/TrWkasY3ZT8OdFxn1ornttBg
 JcqKfCjV4Od90y3gyPchtdTKNjl9k1/ECyZIT/11iCq6jt0PileXBTSm4k2iyGo2oEU/
 VXboyPfrtx2z0cVBDTt3Yb7Lc74AMEHcaMnpUrI561rAtHHEsxrZvv3RnpY6HBU12rrB
 LftA==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777434568; x=1778039368;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=OieD6dy4kgRnLfBJqkyKmCw15BeoKWXt1QJY2qpfM9o=;
 b=jWK6qzluXbaHuBVM42pXBBrvCTgfwt/y4/YVwA0IYOVROVqRpmZiABdAEPJSlkHBCZ
 KkcL3Emy8Y9FeDUHY9XgP+bul/8Qoep8/WBSDX64VjdIC6drWKXjJKp1DRQPEmtUZMzc
 0EQjH+hqHjsYDp4oUkEPe540FTVylWKrUmSGDW1SjrbQw+H98ISyhgQLPFxl8okKMdzT
 H4EByRxRVENV9QGu7SRFEvXzWeM9epUCea+PJPenGRYzGTiJOmf3dPpP1HVbVl3DP2XN
 oWJYDp2XqHg5g8A1FDFjqaQzzsXTW9IzJNvLRxjHcKPSIkyIkMNlsD73S6TWqFX4K4zC
 yRBw==
X-Forwarded-Encrypted: i=1;
 AFNElJ8TeUvuwOCnoN+qgYmBU06O9NInfDwkBeh8Z6HHaWpkdNaEskDRXS87tOHMcRtdo54wLnHGPJ0uZkq+R6ixMP8=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx0Z3xwB0Fy0M2D3k+6621iROCmIW1vrRbmBv7GuidDehgYuVm8
 jIQCLkSzoxDaZtKeux8u8JwgASmPR67VictcsaruIbVHnpogNO8UCouS6YkUx5c2+jKcLwYRWtK
 /Di54LjEW5hWqHolqdFcTQBei+I+UWim8Pnj9CQUUmklxJF8DDl6Zh8tx/YjE+V1uLD7UeMpPZp
 1UDSZT+ofGdn1VtFZwzimuWtg4Dgkl9vt6upGNpSHjnRKas0hdyYklgeNUwquAGg==
X-Gm-Gg: AeBDietFzRqs1cn2vHQJZu8W+u3kBEQSY9lubCCnAcJqaKIimaSc37MGtth9lyTa4wW
 B/RhhuODyN6H3YYPwWmA0jJm7Hwzf78f+MRNpxIfZw/Ti/TOi4+j2gEmyS9V8CKFNsfkUpRgMyL
 UUaGTLHMTT1F5OfEsFlOOaRpY3nXOZqk2PVWFUIUDKdQRipx+AYgg7eYaVZAJjhgug8ljELyXnF
 soNfpH8SWC2M07ypRSqflD/q2CjwpqXHUBOq2DKRHdU193PvRnOEmwsuRqYgsVuGIr/3rdH
X-Received: by 2002:a05:7022:eca:b0:12d:b1a6:7387 with SMTP id
 a92af1059eb24-12de2c5cf51mr566282c88.0.1777434568463; 
 Tue, 28 Apr 2026 20:49:28 -0700 (PDT)
X-Received: by 2002:a05:7022:eca:b0:12d:b1a6:7387 with SMTP id
 a92af1059eb24-12de2c5cf51mr566272c88.0.1777434568099; Tue, 28 Apr 2026
 20:49:28 -0700 (PDT)
MIME-Version: 1.0
References: <20260424030345.1140665-1-aaron.ma@canonical.com>
 <0d1ef57c-7ab6-4ed1-bc11-323aeeb12eac@molgen.mpg.de>
 <CAJ6xRxUEcbadApMg0i7ngcqYMUacrGNvCrUZ96sqkW22TsC7iA@mail.gmail.com>
 <091fa6fa-0f1d-40b3-9c32-8401306f0e66@molgen.mpg.de>
 <9fd9877a-99d5-4710-a063-ca9a62d425c5@intel.com>
In-Reply-To: <9fd9877a-99d5-4710-a063-ca9a62d425c5@intel.com>
Date: Wed, 29 Apr 2026 11:49:13 +0800
X-Gm-Features: AVHnY4InM7OkWN2CPJ-1cMrO41cVOXWpX9YAPstQlqDm7rE2TqD4F005hpwpvK8
Message-ID: <CAJ6xRxVc=q-7cJOVFt4GV=NJ8h2tZ7+EYFG86oM3i_H8PjH89g@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Paul Menzel <pmenzel@molgen.mpg.de>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Akeem G Abodunrin <akeem.g.abodunrin@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, 
 intel-wired-lan@lists.osuosl.org, Kohei Enju <kohei@enjuk.jp>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1777434569;
 bh=OieD6dy4kgRnLfBJqkyKmCw15BeoKWXt1QJY2qpfM9o=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=BBI1JU8ORGYZts91Ul630iEY3cPWX2I3uLWKGX2ohmkz/eSJx2h8AKXfbTqcvTOaQ
 Ie2t+2ULmTQBxnfaOkwRPwXBSXNNPvpRCctR8I/IhxwMYMWsD2Dbkf1SSy5jSqT1AF
 ZHzDVmWgP3nxzd3A3qSDLQ8VEqS+GeFoos1VrOVqaOUtmsx16Imr9TvvFXqt8d2H9d
 wEvrjGhTxfvyRt9t1wvOZpQpPX2BTT4ftjCpF26++vaKgS5+isZGApfmmUqAQ6Vt6n
 XwHx9sNtoCgfUGzlYCcSJTBp3j/bVmEQWmjzUSJgLlmv2px0oUnv+KXyPj5ysFDeek
 sRE8NhcEgV0qKhykQ57iFv/h1uUQ/HgM6ubQ2+Sgd4rQxxqttfdc5LFOCEPsrwYygd
 JoeUnF6Hi/rhDVrCein8JU25oRfAeU6/oodjGBmZ0cqRzPlzmgflkcFQJhrYPHy4L9
 bK9UQJHJIQglltdy1OyxrRvwbkcbEAWHCvczwCq/Obhu/P+AfX8hHV8s7opW008pPd
 SXAP7PEiaCdmiL2cQPXTUJVac3beWmFfLBANLc21cVDOxJBHd2eeeyr3L+yA4AjsxW
 FOTLAXmLgpIKSGZzNHb4xv5b63zfNNU6PCZMHpsBOQVMyWxSlmZcEZGFIb+27wiJhA
 zg7iIbhBruGsTkKmBtbHNNIo=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=BBI1JU8O
Subject: Re: [Intel-wired-lan] [PATCH v2] ice: wait for reset completion in
 ice_resume()
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
From: Aaron Ma via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Aaron Ma <aaron.ma@canonical.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Queue-Id: 0D9CB48ECAA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:pmenzel@molgen.mpg.de,m:anthony.l.nguyen@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:akeem.g.abodunrin@intel.com,m:jesse.brandeburg@intel.com,m:kohei@enjuk.jp,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,mail.gmail.com:mid,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	DKIM_TRACE(0.00)[osuosl.org:+];
	HAS_REPLYTO(0.00)[aaron.ma@canonical.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.980];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

On Tue, Apr 28, 2026 at 9:08=E2=80=AFPM Przemek Kitszel
<przemyslaw.kitszel@intel.com> wrote:
>
>
> >>>> +     ret =3D ice_wait_for_reset(pf, 10 * HZ);
> >>>
> >>> Why not pass a delay in micro/milliseconds?
> >>
> >> ice_wait_for_reset() takes jiffies =E2=80=94 that's the existing API.
> >
> > It=E2=80=99s recommended to use `msecs_to_jiffies()` to make it HZ inva=
riant.
>
> there is also secs_to_jiffies()

Thank you very much.

V4 is sent.

Aaron

>
> >
> >>>> +     if (ret)
> >>>> +             dev_err(dev, "Wait for reset failed during resume:
> >>>> %d\n", ret);
> >>>
> >>> Mention the delay?
> >>
> >> Good point. I'll include the timeout in the error message in v3.
> >
> > Awesome.
> >
> > [=E2=80=A6]
> >
> >
> > Thanks,
> >
> > Paul
>
