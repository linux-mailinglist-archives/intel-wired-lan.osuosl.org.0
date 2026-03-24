Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QPVMHjnkwWnLXgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 02:09:13 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id E23FC300488
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Mar 2026 02:09:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4701560A64;
	Tue, 24 Mar 2026 01:09:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jciVpECCqCRL; Tue, 24 Mar 2026 01:09:09 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8E32E60A68
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774314549;
	bh=9DNbn36MpaIcKoxa+xeam2b6uUovYeiynYTXntSKkSM=;
	h=References:In-Reply-To:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=A6VcMSEZK+ejw/aCqDFIlB37nSB08fjm8VmUS6IR4CeTVWI3MnlVlKYf1YL3x9ipd
	 1UuoYA+cEhK2ShQ6DSU+JRn888zk4gvWulF1byE+UJZ2hlVXjaKuQHIGJ7/YcgkeVD
	 zg+SNIkhPIxoEHnyi8uC3rNJs6eW8LrUoIfLsXJpA6flbYbT4zzkPkJWtWz6mKrp/B
	 WKtF2DMvygbnIUXkOipeq0PaaS9aIamCsao8GCaSN/DCDCQuK9A+SuZWVXH+aYefha
	 JSAbZohdClSr8Y4+27ra174ClO7s9PnLFlu3cRhWQ5EE0i5kO/CgGB4kkIi3AMxNPl
	 RXese/3lqMZCQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8E32E60A68;
	Tue, 24 Mar 2026 01:09:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4FDDF1D3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 01:09:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 33A9B4040A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 01:09:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id txVaqboo4hyy for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Mar 2026 01:09:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::664; helo=mail-pl1-x664.google.com;
 envelope-from=michael.chan@broadcom.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org F17DD4005A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F17DD4005A
Received: from mail-pl1-x664.google.com (mail-pl1-x664.google.com
 [IPv6:2607:f8b0:4864:20::664])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F17DD4005A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Mar 2026 01:09:06 +0000 (UTC)
Received: by mail-pl1-x664.google.com with SMTP id
 d9443c01a7336-2b06c43e6a7so17782465ad.2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 18:09:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1774314546; x=1774919346;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=9DNbn36MpaIcKoxa+xeam2b6uUovYeiynYTXntSKkSM=;
 b=dd7CGonl+ouCp/TKSokQC3P3EBUMf8z9TSoPN+w9A3610otMvups2GG+KV+fvTYWlU
 Y5VlhcE08jOdWATcNnS+J992ZNphlF4HoK4tJ2ysTctIDsJfHnLZxLEPn9FscJv21Uiu
 ozMhg1el+dw6uVKGo70EADMAya1jYuH9HfmHqZLXmmZrSebht2wggCTYUiug+7WwwToa
 eFrZG6IR42ejkzA63wI3hiayVonG6Uaj+aVY2eVJU77NoyjodIgIR3taJxnzqd9mls/2
 XDTNW9qhhBoyYiCNcqPUYloojOJCrzIbGAdzk58zb+oZY8HykQ0RUS+DY3MBE7HDEBke
 AbLw==
X-Forwarded-Encrypted: i=2;
 AJvYcCVhwQCrQ4CCNVAcDOe/+TUl/w1KEkEJ+86uUL/ehRJF/yavNT0oKEPQJSYHNs0Ze7n7tL5ta0i/+/Z6hIbuZtk=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwMFlLugAuwZPl0kyGlgpQuAHkBbLcAVpHi211Mgm4ELCa5X+aZ
 AUT5wJpyuAx1+hFgWUVoEHCbjOUtkWfr1G5N3ZZ5V7sAsY2sqAx8WhNqoIUvMf/PY9/ghHi7RoX
 vfO7kVk4oh2FOphxC3W58JCS/s7kEpnRFtcO2FO0wcwDhYjnHIhkH+ckQQvsWNucGzNXVwIei7J
 YE4jKLcJMwpW1eWJkPtuLBh+nYJ3u5Bvblw5/CRhxmuBNcdqtBO0OOoS8CFKFWObvga2hvMUoeG
 HRp7i2SBtvOUI0kPFzbmOnl
X-Gm-Gg: ATEYQzzDFQCgLor9B5nMd8iQ4WO7QY4j8YN1CvLV7thWV4E2lGLYt9dIc90/ngXgK/G
 9w8w7D1FYQ+3OUNe5Kbmebyy0XutfSeJFLO7+Dz09HUzhynF9IeNZXxs/r1fEC3W36ZNHId7fIa
 usQVIrxdY/CdhYgeBYDP9qG0JDOGntB3MeNdX+GWr3Szztrb8tErtbBEio0LbxeukUAfYTS1TJl
 kRiJaQcZkfVn1JYf8L/xe9jxlZfbr8CA6PYdypAwQb0EFbabXHH4/JAh3y7RCKcenVhoQNjpgOV
 yAhMJnT+P2J9ZpZKzi5/4P6KHPYYQY86cqQfpW4UQjzUdbhMH1dsy7IBebEgK/jxKyMQR9Iu9D0
 SbX42eOF2t9Q4DoD9UdTkceHW6hvpI7cbReBS+dZ3ilVZ4ZEYvIj9ky2xW5crgFrr//kTue2fYY
 yq1mm0v5SbGYXu8Uuzifwnkgw1R7x+MDPM6QPt6JeRpMI6Ndy7AU5Wk29jcbY=
X-Received: by 2002:a17:902:e5c9:b0:2b0:5626:f75d with SMTP id
 d9443c01a7336-2b0827a4f48mr126545325ad.26.1774314545778; 
 Mon, 23 Mar 2026 18:09:05 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com
 (address-144-49-247-117.dlp.protect.broadcom.com. [144.49.247.117])
 by smtp-relay.gmail.com with ESMTPS id
 d9443c01a7336-2b08350b913sm16560775ad.17.2026.03.23.18.09.05
 for <intel-wired-lan@lists.osuosl.org>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Mar 2026 18:09:05 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-ej1-f72.google.com with SMTP id
 a640c23a62f3a-b97f04b44b9so74761066b.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 18:09:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774314543; cv=none;
 d=google.com; s=arc-20240605;
 b=P3cDjpSNvN/eALNG2aGDeb4v+mKnOykJ0stx76Ym+kI0KIspjH/Y+y3zQ0b+hpirJq
 rxP83noVvuMuZ6VST/bOaUW4bGg25ihUHH4JrVAO4hWPFsRZUr7C2chbdhZ+KmsnK/aD
 u38P7rI4XnR8mzhegzXc+53laDtBZh6Wv2BZ/g/yWe8GrgUVcw097oaJDaRUMlKl+n64
 Q0rnvSXPBAM4RmQVTl4Fa3vf5I2213Ofuk4xjCVKov7MPUkKKsjSqmskn5594io5/sjT
 leYsYcX4UktkVCS55qbpZSGpSioVL2IyDmhHzsrw0lepRq+kyZuzqVWj8SSJtw4qISdF
 wzUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=9DNbn36MpaIcKoxa+xeam2b6uUovYeiynYTXntSKkSM=;
 fh=F0a2xt5Q49wR6acKeRez2ZehmxSolo6yWorDwPsRLGU=;
 b=Nn9XK2otxsXEST6KcDPM//puSivjJzq7JS1DNWXRs2qRDSfdbRPIgHiC60Y0MBPxTp
 1Eug3983y7b+aVdxkCfBf2wQ+ze57yzq7CfdEXgPp5qjYbA/R2e4ULxldmQNVPAK2df+
 oN8Lnmzy+nS9x3t124VDwDhtde3mB7x9czof0BpGKTjibpUqqx7yF0lkR28RnTqDOrL2
 n7zlnw02Brz0GP6ZTd3MUABipIBaJE61mBsLiXyTZTsU52JmZo2UizpS3pNUgy525zfG
 A1wizGDTA7zrEVIHb2ijdEtzbavUft8pQF56T0RYovf2sK45dI9PFsIjlCiKvPbeozMH
 yBiw==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Forwarded-Encrypted: i=1;
 AJvYcCWPw5Rnh6d8rQByyj2q5eyspj24Ugbb1FEi/lHgoQmrveginnT0LZoIcAEO6j4kY0uat33hQHiExK9ukk0LqF8=@lists.osuosl.org
X-Received: by 2002:a17:907:6b0e:b0:b96:db93:5d0e with SMTP id
 a640c23a62f3a-b982f4e6533mr1073948666b.41.1774314543384; 
 Mon, 23 Mar 2026 18:09:03 -0700 (PDT)
X-Received: by 2002:a17:907:6b0e:b0:b96:db93:5d0e with SMTP id
 a640c23a62f3a-b982f4e6533mr1073945666b.41.1774314542785; Mon, 23 Mar 2026
 18:09:02 -0700 (PDT)
MIME-Version: 1.0
References: <20260320012501.2033548-1-sdf@fomichev.me>
 <20260320012501.2033548-9-sdf@fomichev.me>
In-Reply-To: <20260320012501.2033548-9-sdf@fomichev.me>
Date: Mon, 23 Mar 2026 18:08:51 -0700
X-Gm-Features: AQROBzBKAHCpXL_0uNaZPLnOtADU_LCPjRl7n7D8OXK2y_iwcTGmn-vseoYacPQ
Message-ID: <CACKFLi=j7DO_d46jwZnmZ=OfmkoFA3AXUoX4nmF0tQuYt5Y3UQ@mail.gmail.com>
To: Stanislav Fomichev <sdf@fomichev.me>
Cc: netdev@vger.kernel.org, davem@davemloft.net, edumazet@google.com, 
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org, corbet@lwn.net, 
 skhan@linuxfoundation.org, andrew+netdev@lunn.ch, pavan.chebbi@broadcom.com, 
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com, saeedm@nvidia.com, 
 tariqt@nvidia.com, mbloch@nvidia.com, alexanderduyck@fb.com, 
 kernel-team@meta.com, johannes@sipsolutions.net, sd@queasysnail.net, 
 jianbol@nvidia.com, dtatulea@nvidia.com, mohsin.bashr@gmail.com, 
 jacob.e.keller@intel.com, willemb@google.com, skhawaja@google.com, 
 bestswngs@gmail.com, aleksandr.loktionov@intel.com, kees@kernel.org, 
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org, 
 linux-wireless@vger.kernel.org, linux-kselftest@vger.kernel.org, 
 leon@kernel.org
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
 micalg=sha-256; boundary="0000000000001b40cf064dbacc2b"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=broadcom.com; s=google; t=1774314543; x=1774919343; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=9DNbn36MpaIcKoxa+xeam2b6uUovYeiynYTXntSKkSM=;
 b=DvjGi+bkCUBkOSS8cN3IbBciOb08kfHJVIKi7D3e+bal+nD3XgdjPNNmIjG7egP6/J
 e9GmQ6SLqfhN+6ZGeG4mMwajSMpZsMoUGVwKg3NgHB5QaZcYWHopdGgDVvyrgaVkNh+z
 ZyT/9pWeppZyhV+q4gKq9JHJdN+eU4tz5UzZo=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=broadcom.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=broadcom.com header.i=@broadcom.com header.a=rsa-sha256
 header.s=google header.b=DvjGi+bk
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 08/13] bnxt: use snapshot
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
From: Michael Chan via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Michael Chan <michael.chan@broadcom.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [-0.81 / 15.00];
	SIGNED_SMIME(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[osuosl.org,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,davemloft.net,google.com,kernel.org,redhat.com,lwn.net,linuxfoundation.org,lunn.ch,broadcom.com,intel.com,nvidia.com,fb.com,meta.com,sipsolutions.net,queasysnail.net,gmail.com,lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sdf@fomichev.me,m:netdev@vger.kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:horms@kernel.org,m:corbet@lwn.net,m:skhan@linuxfoundation.org,m:andrew+netdev@lunn.ch,m:pavan.chebbi@broadcom.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:saeedm@nvidia.com,m:tariqt@nvidia.com,m:mbloch@nvidia.com,m:alexanderduyck@fb.com,m:kernel-team@meta.com,m:johannes@sipsolutions.net,m:sd@queasysnail.net,m:jianbol@nvidia.com,m:dtatulea@nvidia.com,m:mohsin.bashr@gmail.com,m:jacob.e.keller@intel.com,m:willemb@google.com,m:skhawaja@google.com,m:bestswngs@gmail.com,m:aleksandr.loktionov@intel.com,m:kees@kernel.org,m:linux-doc@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-rdma@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:linux-kselftest@vger.kernel.org,m:leon@kernel.org,m:andrew@lunn.ch,m:mohsinbashr@gmail.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[36];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,fomichev.me:email,broadcom.com:email,broadcom.com:replyto];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	HAS_REPLYTO(0.00)[michael.chan@broadcom.com];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[intel-wired-lan@osuosl.org,intel-wired-lan-bounces@osuosl.org];
	HAS_ATTACHMENT(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[10]
X-Rspamd-Queue-Id: E23FC300488
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

--0000000000001b40cf064dbacc2b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 19, 2026 at 6:25=E2=80=AFPM Stanislav Fomichev <sdf@fomichev.me=
> wrote:
>
> With the introduction of ndo_set_rx_mode_async (as discussed in [0])
> we can call bnxt_cfg_rx_mode directly. Convert bnxt_cfg_rx_mode to
> use uc/mc snapshots and move its call in bnxt_sp_task to the
> section that resets BNXT_STATE_IN_SP_TASK. Switch to direct call in
> bnxt_set_rx_mode.
>
> 0: https://lore.kernel.org/netdev/CACKFLi=3D5vj8hPqEUKDd8RTw3au5G+zRgQEqj=
F+6NZnyoNm90KA@mail.gmail.com/
>
> Cc: Michael Chan <michael.chan@broadcom.com>
> Cc: Pavan Chebbi <pavan.chebbi@broadcom.com>
> Signed-off-by: Stanislav Fomichev <sdf@fomichev.me>
> ---
>  drivers/net/ethernet/broadcom/bnxt/bnxt.c | 26 ++++++++++++++---------
>  1 file changed, 16 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethe=
rnet/broadcom/bnxt/bnxt.c
> index 225217b32e4b..12265bd7fda4 100644
> --- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
> +++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
> @@ -11039,7 +11039,8 @@ static int bnxt_setup_nitroa0_vnic(struct bnxt *b=
p)
>         return rc;
>  }
>
> -static int bnxt_cfg_rx_mode(struct bnxt *);
> +static int bnxt_cfg_rx_mode(struct bnxt *, struct netdev_hw_addr_list *,
> +                           struct netdev_hw_addr_list *);
>  static bool bnxt_mc_list_updated(struct bnxt *, u32 *,
>                                  const struct netdev_hw_addr_list *);
>
> @@ -11135,7 +11136,7 @@ static int bnxt_init_chip(struct bnxt *bp, bool i=
rq_re_init)
>                 vnic->rx_mask |=3D mask;
>         }
>
> -       rc =3D bnxt_cfg_rx_mode(bp);
> +       rc =3D bnxt_cfg_rx_mode(bp, &bp->dev->uc, &bp->dev->mc);
>         if (rc)
>                 goto err_out;
>
> @@ -13610,11 +13611,12 @@ static void bnxt_set_rx_mode(struct net_device =
*dev,
>         if (mask !=3D vnic->rx_mask || uc_update || mc_update) {
>                 vnic->rx_mask =3D mask;
>
> -               bnxt_queue_sp_work(bp, BNXT_RX_MASK_SP_EVENT);
> +               bnxt_cfg_rx_mode(bp, uc, mc);
>         }
>  }
>
> -static int bnxt_cfg_rx_mode(struct bnxt *bp)
> +static int bnxt_cfg_rx_mode(struct bnxt *bp, struct netdev_hw_addr_list =
*uc,
> +                           struct netdev_hw_addr_list *mc)
>  {
>         struct net_device *dev =3D bp->dev;
>         struct bnxt_vnic_info *vnic =3D &bp->vnic_info[BNXT_VNIC_DEFAULT]=
;
> @@ -13623,7 +13625,7 @@ static int bnxt_cfg_rx_mode(struct bnxt *bp)
>         bool uc_update;
>
>         netif_addr_lock_bh(dev);
> -       uc_update =3D bnxt_uc_list_updated(bp, &dev->uc);
> +       uc_update =3D bnxt_uc_list_updated(bp, uc);

Will the uc list snapshot change between bnxt_set_rx_mode() and
bnxt_cfg_rx_mode() with the direct call now?  In the original deferred
update implementation, the uc list can change and that's why we check
in both functions.

--0000000000001b40cf064dbacc2b
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

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
DPVtLUtep/P3evQuAtTQRaKedjamBcUpJ7qUhBuv/Z07LlLIlB/vfNSPWe1V+njTezc8m3VfvNEC
qEpXasPSfDgfcuUhcPR+7++oUDaTt9iqGFOjwiURxx08pL6ogSuiT41O4Xu7msabnUE6RY0O0xR5
5UGwbpC1QSmnBq7TAy8oQg/nNw4vowEh3S2lmjdHCOdR270Ygd7jet8WQKa5ia4ZK4QdkS8+5uLt
rMMRyM3QurndiZZJBipjPvEWJR/+jod8867f3n0CAwEAAaOCAd0wggHZMA4GA1UdDwEB/wQEAwIF
oDAMBgNVHRMBAf8EAjAAMIGTBggrBgEFBQcBAQSBhjCBgzBGBggrBgEFBQcwAoY6aHR0cDovL3Nl
Y3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NnY2NyNnNtaW1lY2EyMDIzLmNydDA5BggrBgEF
BQcwAYYtaHR0cDovL29jc3AuZ2xvYmFsc2lnbi5jb20vZ3NnY2NyNnNtaW1lY2EyMDIzMGUGA1Ud
IAReMFwwCQYHZ4EMAQUDAzALBgkrBgEEAaAyASgwQgYKKwYBBAGgMgoDAjA0MDIGCCsGAQUFBwIB
FiZodHRwczovL3d3dy5nbG9iYWxzaWduLmNvbS9yZXBvc2l0b3J5LzBBBgNVHR8EOjA4MDagNKAy
hjBodHRwOi8vY3JsLmdsb2JhbHNpZ24uY29tL2dzZ2NjcjZzbWltZWNhMjAyMy5jcmwwJAYDVR0R
BB0wG4EZbWljaGFlbC5jaGFuQGJyb2FkY29tLmNvbTATBgNVHSUEDDAKBggrBgEFBQcDBDAfBgNV
HSMEGDAWgBQAKTaeXHq6D68tUC3boCOFGLCgkjAdBgNVHQ4EFgQUJbO/Fi7RhZHYmATVQf6NlAH2
qUcwDQYJKoZIhvcNAQELBQADggIBABcLQEF8mPE9o6GHJd52vmHFsKsf8vRmdMEouFxrW+GhXXzg
2/AqqhXeeFZki82D6/5VAPkeVcgDeGZ43Bv89GHnjh/Vv0iCUGHgClZezpWdKCAXkn698xoh1+Wx
K/c/SHMqGWfBSVm1ygKAWkmzJLF/rd4vUE0pjvZVBpNSVkjXgc80dTZcs7OvoFnt14UgvjuYe+Ia
H/ux6819kbi0Tmmj5LwSZW8GXw3zcPmAyEYc0ZDCZk9QckL5yPzMlTAsy0Q+NMVpJ8onLj/mHgTk
Ev8zt1OUE8MlXZj2+wgVY+az2T8rGmqRU2iOzRlJnc86qVwuwjL9AA9v4R13Yt8zYyA7jL0NiBNP
WaOSajKBB5Z/4ZVtcvOMILD1+G+CVZX7GUWERT9NRXw/SyIEMU59lFbuvy4zxe3+RbOleCgp3pze
q8HE2p9rkOJT3MkCNLxe+ij4RytIvPQXACsZeLdfTDUnjeXCDDJ9KugVhuqMelAZc4NissPz8FOn
2NK++r5/QamlFqYRhsFxSBIvhkh2Q/hD3/zy4j17Yf/FUje5uyg03FblSBOk2WYpRpXEuCpyn5pb
bYVIzfhQJgwGfO+L8BAeZIFjO1QL3s/zzn+RBlTl4wdDzh8L9eS+QEDhMcSsqb4fFRDbsoVuRjpx
R5MunSUzk4GcmmM19m7oHhPGeKwIMYICVzCCAlMCAQEwYjBSMQswCQYDVQQGEwJCRTEZMBcGA1UE
ChMQR2xvYmFsU2lnbiBudi1zYTEoMCYGA1UEAxMfR2xvYmFsU2lnbiBHQ0MgUjYgU01JTUUgQ0Eg
MjAyMwIMZh03KTi4m/vsqWZxMA0GCWCGSAFlAwQCAQUAoIHHMC8GCSqGSIb3DQEJBDEiBCCR33Mw
/YA8D9hJe2rawnAotsSH69SPoOptXJYmGQDmvjAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwG
CSqGSIb3DQEJBTEPFw0yNjAzMjQwMTA5MDNaMFwGCSqGSIb3DQEJDzFPME0wCwYJYIZIAWUDBAEq
MAsGCWCGSAFlAwQBFjALBglghkgBZQMEAQIwCgYIKoZIhvcNAwcwCwYJKoZIhvcNAQEHMAsGCWCG
SAFlAwQCATANBgkqhkiG9w0BAQEFAASCAQAZK/hLs0Gm5EKim2KTMmzLSwFU9kz4BkvvzyAsOYD2
/+o8DpLIIx3C+1zyK4eo2/f0xcMbWL7tJ25Rg+uFfSmb2ZJ7T/QLj1uHSSIpW2k4X0OXIEpf71yc
G78A4ch9unqd9OTC5dP3L2fOy+DQu+WEckpdq3kehFtSdqMsSpTbpCMNPnPt64Csoz6jAyrNeQJ0
QboP8dBb10SexWfruwePEfwLCf3xCh72jB66zdgE7OhE8nurQafkPij1+YyoFqgLHXnrumW6SeY6
kDi3Tuwf+G4KTyR3Tq7RfyVaxpgIdqpeOZB/h3r4AIDvLv1wf7vD3tBf6mX5YpC8I96O79Re
--0000000000001b40cf064dbacc2b--
