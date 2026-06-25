Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bgfVE6P/PGofvggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 12:14:59 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD1A6C486D
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 12:14:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=SQ8edrmp;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=pass (policy=none) header.from=osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 31669410C2;
	Thu, 25 Jun 2026 10:14:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GOfJDcM5ONos; Thu, 25 Jun 2026 10:14:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 73A85410C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782382495;
	bh=eTF4zUQ/sXytzxyjzk0NCCLZSwx0zHz2xiig6UQLvv4=;
	h=References:In-Reply-To:Date:To:Subject:List-Id:List-Unsubscribe:
	 List-Archive:List-Post:List-Help:List-Subscribe:From:Reply-To:Cc:
	 From;
	b=SQ8edrmpkuqBNcpPLGcGJIIk7HOYbbMixznH50PQ16v78QGtGGU8kKd0gS65g9oXT
	 obbEAoxtbe9cYPdPMASkB+EkGcEiLoIGaWPjOZBgzRaxh4AsQreKXIkIsPthvMn/o8
	 27rPKZn4pKNNuwfSpKzqMiE/8UDf5jjzco1QLd5P0fs44AF4FCxXKJLUI3PpKsdrod
	 C7losRXP+//pSHPrFA7MXDHNXGV2fqotVH6V0iaeaqb6VQCTxWk/QfEkZ8NGjZhPhY
	 eBnOKq7p62GBRb9yUlOMw+w1uoq3UQhgMvwTHhqdCFLp4wpHo+js4CyoOMwBKwwdKE
	 CxaPPM4euVm3g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 73A85410C3;
	Thu, 25 Jun 2026 10:14:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8B04818F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 10:14:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7C402821E7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 10:14:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id CvNpw_dIqKkQ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jun 2026 10:14:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=185.125.188.122;
 helo=smtp-relay-internal-0.canonical.com;
 envelope-from=robert.malz@canonical.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 1230982115
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1230982115
Received: from smtp-relay-internal-0.canonical.com
 (smtp-relay-internal-0.canonical.com [185.125.188.122])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1230982115
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 10:14:51 +0000 (UTC)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 760293FB64
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 10:14:48 +0000 (UTC)
Received: by mail-ej1-f70.google.com with SMTP id
 a640c23a62f3a-c0afbf73482so188702766b.0
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 03:14:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782382488; cv=none;
 d=google.com; s=arc-20260327;
 b=l4n+nd8y9k2l5C1Nx/+pFTQnYrbqihWHjZymM0THXCCaIoGzXnNxt1KElK/QYv8mep
 cNDrL4Kz9ANQujqC+j6Y4PjafqjYvOxBsL7y3UaDs7rXSuX+BTJNfsy8jrhIvXTxSD3R
 JYdGT2by/6nqhxGM1vh/r7Nh2tvD/77Vp7tLeE5MVM04IJhMVOlTyUWcDQAccj9gVUBT
 nNh1NmkcsjG+XyxEorSvwLjLUzQfv/1Z5r+9YH4GfgcxAkZQX9mwLVuYl3koY6HjKblM
 NQbbh6TxijgEvM2yVsTtUiGH0uz/deOY/glrQD7UC+VxMDEeXLarvP/C+z1GNRlUcMiL
 WmSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20260327; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version;
 bh=eTF4zUQ/sXytzxyjzk0NCCLZSwx0zHz2xiig6UQLvv4=;
 fh=uT4mi3Qgza7ptoF4uUM9ZpTGhKkwxj66E5b5NQ03j+I=;
 b=XghlBcd0o3duouuKFDJojbs8ZJgaupAfDF6jaF74wYG0Kr0pJci0T5DjPnw2rq66a3
 VYc+xzaecfpLa0FZCLpzBEyze5VcSqAqIu5AURMTcjm0iLwr8Pqh1YUqXfSkSBtTijRg
 KrWec0wWnNQMuIKyFAO1k/uJkjuh3f0kLPGMSqLta6u6L25OKg4totsHpuigK7h6lYXd
 Kj4RauNOPzmMj+8H94VXfOFUTQ8vXqxuQWHo+v+WUsieL2ys5vtk2Rok9JI6cu0DpKHK
 f01p7NuAUe3drphvnDf/TdfR7KX//4XXRWQOnRLzS8HU7IYavq0TAuwtWfvNFuLFAl/S
 w3Gg==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1782382488; x=1782987288;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=eTF4zUQ/sXytzxyjzk0NCCLZSwx0zHz2xiig6UQLvv4=;
 b=W5Wd4lLM+UXvTFiy8R+mXLhInW1CK9MbvVuHroM1dgnpG9eEHkrrvEEw8nWmceIvkv
 tRdDntK1Xxdi+PHDLm5+hjXCaONeYkZAyJED9XISkKASe9TfFA9Ud/KVCv2dP0kb8cLb
 Q6k0v9aaQxA/iELEJa5FhPqnYDDeARR+nh4KGD6mSaqWXkKMftBhchOcR24NMYyRSSrO
 SP9IaqF0VO5mHdoHi+LlbsA+NJeDK8HI/w/ebdXqT38H6ZYjLaFkr6xxpMsYIzw0CRjQ
 B6GuC9LQoybtKGgIvUugoXhFjTcwieA05TiLWNprJ/58uyiRVvYXTiOL3sCCKWHCB1KX
 AuRQ==
X-Forwarded-Encrypted: i=1;
 AHgh+RoFTMCi+ux9USCYqNr/I/bG9XlxO8mlvmz4zyEl824dYdNOiwk5hY73W/nDFu23JCqsqThtk4Kf7IKzcMx5z5g=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzWFC7c8av/Zqf3XiQ9gX+57WFUABf1zIMAILBgfbzpCuiVMC6P
 /qn8qAzm2rYOTgkwwBT3vPnN5jK3nuMD0TOUbIUPRI+y02ijtopsW4cy3fbTtC6xeR3M2PCd8NC
 vmK+5IBQfScMzjKFPri/BrugGdl5yHHDZNik+I6VWThRe7bTGDGz9hWivuXQti57Dce+DuN76BK
 ONQoIg0dG+fsqquM0lVln778K03JY8hZw8R59haXgncw7KTcrmd+QgBEkkPoJdsA==
X-Gm-Gg: AfdE7cm4Gf8V9+YdDqV9XcNwAbBbBRmqV7mW+qJ49bS2z1TdrxXNW/THJNG4lwxWf3m
 z8ULCj54xOEWKNY8ekyaOxOlsIO8PkkeuGxw3rjiMWWjUW+W6rq9S9GiBIx9JnBf8bXq5C7O2UF
 1odlDHfYoEyfc5mRwYIXfayvwzbquUlHL7ysbB3R7HCwdco0SCF5lvUovsyUN1Yh6rqg==
X-Received: by 2002:a17:906:9f87:b0:bee:c13f:7ec0 with SMTP id
 a640c23a62f3a-c1205d9863bmr132177066b.8.1782382487748; 
 Thu, 25 Jun 2026 03:14:47 -0700 (PDT)
X-Received: by 2002:a17:906:9f87:b0:bee:c13f:7ec0 with SMTP id
 a640c23a62f3a-c1205d9863bmr132173466b.8.1782382487118; Thu, 25 Jun 2026
 03:14:47 -0700 (PDT)
MIME-Version: 1.0
References: <20260617120753.1785565-1-robert.malz@canonical.com>
 <20260618152003.909400-1-horms@kernel.org>
 <CADcc-bydFL4KNDQEznStE41NFXuCey9S+kyXg0usbonwyWpiAQ@mail.gmail.com>
 <5658849b-0425-4132-ba32-5801e2907c60@intel.com>
In-Reply-To: <5658849b-0425-4132-ba32-5801e2907c60@intel.com>
Date: Thu, 25 Jun 2026 12:14:35 +0200
X-Gm-Features: AVVi8Cf26lyKrmpyACKceEiVOkf60PnI2cxp-Ngd284thAHkNtOJlwpsFvJ_U1Y
Message-ID: <CADcc-bwd2CcWJ1AFDm1GR1HBzo2OOh=Xr3moNS+-RVuai6yVBA@mail.gmail.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=canonical.com; s=20251003; t=1782382488;
 bh=eTF4zUQ/sXytzxyjzk0NCCLZSwx0zHz2xiig6UQLvv4=;
 h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
 To:Cc:Content-Type;
 b=aG3teuixUsVnJCHqlGnqTbgkVH3gM+iRrbBdM9sxvU8z1vYeinDOQHZyfIjDhbOOr
 UII2fRe0IIaWV43UjQo8cg5GkxyBC4Kwn5wh43tPIHvyzbJkhFgdPrDI4ZG1/gjjrM
 CkHOMVgTESPwPA4lo2+7PPax0VzlhmW42d0xrgsnTyvCktB7/D3fjs13/4fMKkIuk1
 swHHYvv+Gom+JMUFDe3QHUqcYNyhA3mSjO/Y8WpIukI/oKfESqfd9H+2SqR1JHjMlM
 UeigujonsJTqxhFQRz22R1lkCXKlM6PIpapzdHD3ES2GQb1R+dbu/a32crx66QOIkp
 wcMBBD1lhneHxD1bepprQ5pYgw9FcSM6psBXy+pK9iIOylr44JnU7LVrlhpwpTb18s
 fghytxi3q5fvWRiV86Bo8pGpf31e+ZRYrcbGMjjzy3qf/p4xn3nDqGVvcWRf0O7/6r
 W52yEGh8kKNr450FJz1zQgP7NispL7akJ1ihFBWRuRv7Vpof1LZvPv+UHjQFB4QxK+
 qBbldpba7k7Cr3lKwGq8MsQZcR+2wkbbJ3BlBMJwMSqArcF/9IQbwjekRwOSpM4FEb
 dYVKmfQ9tincdrcqhUkerp4DYBPyfo7/4HuAGxZKQosHrVY8/tTwDnpZuHWny/BPIz
 vh0mDNZpE9vj+csQawCOaav8=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=canonical.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (4096-bit key,
 unprotected) header.d=canonical.com header.i=@canonical.com
 header.a=rsa-sha256 header.s=20251003 header.b=aG3teuix
Subject: Re: [Intel-wired-lan] [PATCH iwl v3] ice: retry reading NVM if
 admin queue returns EBUSY
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
Cc: anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org,
 Simon Horman <horms@kernel.org>, netdev@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,intel.com:email,canonical.com:replyto,osuosl.org:dkim,osuosl.org:from_smtp,osuosl.org:from_mime,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FORGED_RECIPIENTS(0.00)[m:przemyslaw.kitszel@intel.com,m:anthony.l.nguyen@intel.com,m:horms@kernel.org,m:netdev@vger.kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	HAS_REPLYTO(0.00)[robert.malz@canonical.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ABD1A6C486D

Hey Przemek,
Thanks a lot for the feedback.
I was sure that we use ICE_NVM_TIMEOUT (180s) as a timeout every time
(ice_acquire_nvm) but your proposal made me rethink it a little.
First of all, the datasheet for E810 specifies the timeout as: "As an
input, the software might specify timeout longer than the default
taken for this resource, and up to one minute."
180s is greater than one minute so I took a look into AQC logs:
[  110.698471] ice 0000:05:00.0: CQ CMD: opcode 0x0008, flags 0x2000,
datalen 0x0000, retval 0x0000
[  110.698474] ice 0000:05:00.0:        cookie (h,l) 0x00000000 0x00000000
[  110.698477] ice 0000:05:00.0:        param (0,1)  0x00010001 0x0002BF20
[  110.698480] ice 0000:05:00.0:        addr (h,l)   0x00000000 0x00000000
[  110.698645] ice 0000:05:00.0: ATQ: desc and buffer writeback:
[  110.698648] ice 0000:05:00.0: CQ CMD: opcode 0x0008, flags 0x2003,
datalen 0x0000, retval 0x0000
[  110.698651] ice 0000:05:00.0:        cookie (h,l) 0x00000000 0x00000000
[  110.698654] ice 0000:05:00.0:        param (0,1)  0x00010001 0x00000BB8
[  110.698657] ice 0000:05:00.0:        addr (h,l)   0x00000000 0x00000000
Based on the above, the driver requested a 0x0002BF20 timeout (180 000
ms) but the FW returned only 0x00000BB8 (3s).
I'm assuming this is expected behavior since the maximum timeout for
NVM read should be 60,000 ms.

If changing the timeout requested by the driver to 60s for read ops is
handled correctly by the FW and the FW respects that lock, the retry
patch submitted in this email thread might not be required at all.
Let me quickly prepare a new patch and test it. I'll update this
thread once I have a results.

Regards,
Robert


On Thu, Jun 25, 2026 at 9:51=E2=80=AFAM Przemek Kitszel
<przemyslaw.kitszel@intel.com> wrote:
>
> >> This is an AI-generated review of your patch. The human sending this
>
>
> >> [Severity: Low]
> >> Does this check allow an extra retry execution? Since retry_cnt starts=
 at 0,
> >> using a strictly greater-than check allows the loop to retry 4 times
> >> (5 total executions) instead of the 3 executions intended by
> >> ICE_SQ_SEND_MAX_EXECUTE.
> >>
> >>> +                             break;
> >>> +                     ice_debug(hw, ICE_DBG_NVM,
> >>> +                               "NVM read EBUSY error, retry %d\n",
> >>> +                               retry_cnt + 1);
> >>> +                     last_cmd =3D false;
> >>> +                     ice_release_nvm(hw);
> >>> +                     msleep(ICE_SQ_SEND_DELAY_TIME_MS);
> >>
> > The review is correct that this allows one extra execution. However, I
> > intentionally kept this verbatim from the OOT driver (1.15.4) to
>
> This OOT change was made entirely by Grzegorz, for E825C. Would be great
> to acknowledge his authorship (+ SoB ofc, below).
> Signed-off-by: Grzegorz Nitka <grzegorz.nitka@intel.com>
>
> What was the platform that you have encountered the bug on?
>
> > retain the significant test exposure it has there. The absolute worst
> > case is one harmless extra retry before giving up. If you strongly
> > prefer strict adherence to ICE_SQ_SEND_MAX_EXECUTE, I can update the
> > condition in a v4.
>
> Please update (to have one attempt less).
>
> >
> >> [Severity: High]
> >> Does dropping the NVM lock here violate the caller's assumption of mut=
ual
> >> exclusion?
> >>
> >> Callers of ice_read_flat_nvm() typically acquire the NVM lock beforeha=
nd to
> >> ensure an atomic read of multiple sectors without interleaved writes. =
By
> >> explicitly dropping the lock during the msleep() window, another threa=
d, VF,
> >> or PF could acquire the NVM lock and modify the NVM before the read re=
sumes,
> >> potentially resulting in reading torn or inconsistent NVM data.
> >>
> >>> +                     status =3D ice_acquire_nvm(hw, ICE_RES_READ);
> >>> +                     if (status)
> >>> +                             break;
> >>
> >
> > I don't think this is an issue. The NVM resource (req_res 0x0008) is
> > an ownership lease, not a content snapshot. The FW grants it with a
> > hold timeout (see the timeout field handling in ice_aq_req_res). It
> > never guaranteed a point-in-time view of the flash.
> > Very similar behavior already exists in ice_devlink_nvm_snapshot(),
> > which reads the NVM in chunks via ice_read_flat_nvm() and deliberately
> > acquires/releases the lock between chunks (with a comment explaining
> > the FW reclaim).
> > Additionally, the lock is only dropped on the failure path, where
> > neither bytes_read nor offset have been advanced. The driver simply
> > re-reads the failed chunk after re-acquiring. So no data that is
> > returned to the caller is committed across the drop window.
> > Overall the lock drop does not weaken any guarantee callers actually
> > have. If we wanted to introduce a true snapshot guarantee, that would
> > probably require different approach and separate patch.
> >
> >
> >> [Severity: High]
> >> Can this lead to an unbalanced NVM resource lock release and potential=
 data
> >> corruption?
> >>
> >> If ice_acquire_nvm() fails here, the loop breaks and returns an error =
with the
> >> lock currently unheld. However, callers like ice_read_flash_module() a=
re
> >> unaware of this internal lock state change and will unconditionally ca=
ll
> >> ice_release_nvm() upon failure:
> >>
> >> drivers/net/ethernet/intel/ice/ice_nvm.c:ice_read_flash_module() {
> >>          status =3D ice_acquire_nvm(hw, ICE_RES_READ);
> >>          if (status)
> >>                  return status;
> >>
> >>          status =3D ice_read_flat_nvm(hw, start + offset, &length, dat=
a, false);
> >>
> >>          ice_release_nvm(hw);
> >>      ...
> >>
> >> Because firmware tracks resource locks per-PF rather than per-OS-threa=
d, this
> >> errant second release could forcefully strip the lock from another thr=
ead on
> >> the same PF that successfully acquired it, exposing the NVM to concurr=
ent
> >> modification.
> >>
> >
> > Agreed, this might be a real bug, and the one of the three I think is
> > worth investigating.
> > If ice_acquire_nvm() fails after the drop, ice_read_flat_nvm() returns
> > with the lock unheld while callers unconditionally call
> > ice_release_nvm(), so a stray release is issued.
> >
> > On probability, though, the window is very small. Reaching it requires
> > sustained EBUSY across the retry budget plus a failed re-acquire
> > (which itself polls up to ICE_NVM_TIMEOUT), and concurrently another
> > requester taking the lock. Most reads happen during init (ice_probe,
> > and reset/rebuild via ice_init_nvm), and NVM writes only happen on an
> > already initialized driver. The devlink/ethtool nvm_read paths are
> > also exposed, but hitting this race would require precise timing
> > against a concurrent NVM owner on the device.
> >
> > I'd prefer to keep the scope of this patch limited to the EBUSY retry
> > path and not take on the unbalanced-release fix here. A proper fix
> > should change the lock-ownership contract of ice_read_flat_nvm() (on
> > error, the lock must be released by ice_read_flat_nvm(), callers
> > release only on success) and update all callers. Code change sould be
> > simple for all callers but ice_discover_flash_size(), it intentionally
> > holds one lease across a read loop and would need to re-acquire after
> > each expected boundary failure.
> >
> > Given how small the original window is, I'd rather not trade tested
> > OOT behavior for the risk of a complex unbalanced NVM lock fix. I
> > actually have a patch mostly ready that fixes the lock-ownership
> > contract, but I really don't like it. It changes the design of
> > ice_read_flat_nvm(), making it less intuitive for callers. More
> > importantly, I just don't have the resources or test coverage right
> > now to properly verify such change.
> >
> > However, I can modify the failure path for ice_acquire_nvm inside
> > ice_read_flat_nvm. Instead of bailing out immediately, we can just
> > retry it within the existing retry budget. In this case, the
> > probability of leaving ice_read_flat_nvm without holding the lock is
> > reduced even further without needing a refactor.
> >
> > Please let me know what you think about my thought process on this.
>
> I think that both AI-reported issues against the lock are valid
> concerns.
>
> I think that sleep was the actual fix, and re-locking were merely
> a necessity due to their expiration (as you said).
>
> A proper fix would be to just increase lock-timeout to accommodate all
> attempts (and still do the retries&sleep, but without unlocking).
>
>
> >
> >
> >
> >>> +                     retry_cnt++;
> >>> +             } else {
> >>> +                     bytes_read +=3D read_size;
> >>> +                     offset +=3D read_size;
> >>> +                     retry_cnt =3D 0;
> >>> +             }
> >>>        } while (!last_cmd);
> >>>
> >>>        *length =3D bytes_read;
> >
> > Thanks,
> > Robert
>
