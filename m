Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yI1BBEAx32n1PwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 08:33:36 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2118B400DC2
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 08:33:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 739B546D76;
	Wed, 15 Apr 2026 06:33:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Fpz1BI9EtEGD; Wed, 15 Apr 2026 06:33:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C66CB46F1F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776234812;
	bh=I/YGk6diE6DwfvFh1WTj1ikmEooEeeXvUwgqkLXnYMI=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ns2U/cidrX5spoN2LoNHc1Um+0cUpmbpvaJTUPzQ6i9czcOrXuSUKm67AR0lqHwJX
	 VUcVIPOvGKTIFAsLUZGeG71khe58D3WsAjnCyJ8KflsFAl7VAuMQ5mLlCxcL4V2Png
	 kY3S2EIK029P0xef/3I7crGoSrLz6TbxHe8/QRGdQMdsrzJorafOgFA56xK5YeK9U8
	 pzUL3D7PSUqezaIfNX9xG9jzVrr0G6yfwdf8bgNlsxc+kVUxFV6aKPTmmszgWhY0iK
	 foRMVJSNKTYrbizFL9arYGF9wyrhAd9rbII1nCdUaa3Ys4mCzhmkQ2BmgOavS90+2M
	 PqXl77qZ8jLzg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id C66CB46F1F;
	Wed, 15 Apr 2026 06:33:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 7F547237
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 06:33:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 718D846E3A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 06:33:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id r92fcv5u_CpM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 06:33:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::112d; helo=mail-yw1-x112d.google.com;
 envelope-from=lgs201920130244@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9925A46D76
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9925A46D76
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com
 [IPv6:2607:f8b0:4864:20::112d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9925A46D76
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 06:33:30 +0000 (UTC)
Received: by mail-yw1-x112d.google.com with SMTP id
 00721157ae682-79a2ee65171so82180127b3.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Apr 2026 23:33:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776234809; cv=none;
 d=google.com; s=arc-20240605;
 b=kkqU6izo6tyeRBdeQARRNPcEC8WhlAfrF+NMvyDJo5Ubn32m+NOrudnTUAr02IEe2O
 AIQa5OyQgDL4d5nRvsymIJ1tLnuwC9pqly4IkyDWOaIe2VVp/IqgZh9DvaBlAOChRlpz
 Kt2O78CShcr3ONlYuqYF/WFGucg6icoI3FT6CSgWaupAUqDp2Xb459VjX8daR0ecgozh
 y5MZ5918+Bwwod4XtwxVoWH/v/sfYj9pIuZ+sMuJx+fogjTszqrW8h5gFNRF6Y2q3EBs
 UHkP1WaNusQaYleMml9rRk5QKAtKJevEqDIlV/982kyqafflNO2D9mSO5IrarjWvmf9Q
 Uw0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:dkim-signature;
 bh=I/YGk6diE6DwfvFh1WTj1ikmEooEeeXvUwgqkLXnYMI=;
 fh=jGdmTWXC61bbSDQjU9EKqXPWJ2N1ELzlytsEVhxHf/A=;
 b=GBauUw5pvywdBDP1YjOiQ5085UoTnSg4FASbk/QwYDswTPF8DH1aW3Oa9Id/cu3A6E
 Vx9HhLaLPhN+H2mVzVBtCjYZWkKLryXo2TZNvv8WkxKndI23XOCpiFZAFuBKgrNJD+fp
 tW/RUgBWcHUfWjQ0TuqLF6KjZfILfXjgSlg9Up2Wi3PpSwUCxMKpQMoTu29Sbvdn3eeC
 mEvFrIPU6ZMqBNmiAaJFLto7ZcF2Qse1XqAW4qS2DkyqLeU5Xk7dPaB6PsXrqYO50J80
 QU5D98e76BrldpWoSEPyZNLpcEmtIgZ/LopDinOhdQHDRGIuCj6fvgbE7j8xJ4o3ZhuR
 aP4w==; darn=lists.osuosl.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1776234809; x=1776839609;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=I/YGk6diE6DwfvFh1WTj1ikmEooEeeXvUwgqkLXnYMI=;
 b=tKhA5XaXn+lNF16TW/eBE0IWftQ2fO9lgo3rzBwNmk2B/O8d4OEecSIgag3FZ/FXjJ
 6DLDMebZhadnAVK7oaVunXcRvb7nhXee/jWT45UAxYyYA9hcnYbo0h4+kt6Le8WMifBA
 WpKZBQOchVtrdnlgBC7VLv0K58moyuwFz8SqRjSv2Spy5xx8FMuHqnKLDLbgW4woTHbP
 pPwJLLIdod7jZMGTM5H1hh7LAx2k8oROWVrlZ7tMsxLbphZxtYXzvay2MdDNQJDXic7n
 OM7IzmM51RucGgjs9C13wkRpZMsiKpuo+SMSV2lcyWp8bAuRoE7xtIjPSRhSrvgt706P
 9iRA==
X-Forwarded-Encrypted: i=1;
 AFNElJ/OQXpJ1pemkBEx07wkrxYFtZEYCoajI684/v47JEx82oJO1YwiwqFwi0VFw12srpfkeA6XKAYseqW9l4k9uh4=@lists.osuosl.org
X-Gm-Message-State: AOJu0YzJD/5ApnD4CWrSxVaq7rta3Xvd9BuyH67e2iB5QTuPHEejtVT8
 IzWJExg2kpjWAF7b/EpXxeSu0+fFFHhaU6LC4G/Yh9sc6/vF1oHSsodoA2P0CZDrL8SV5bc0Gq3
 gvjFE23DAU1/xppg8yoGANQNQis41SpQ=
X-Gm-Gg: AeBDietzTrD9fuBiiCZ60VjYfuwh2Asmc0j8XrRHvF0WMj777ids6uJXYWhsNGyXLXw
 031RRoP/nOHYdMaZR3xaFjMfIdhKV8U9wqrTf0tm4o7SEYK/Us2BjEjTCuYXJ71I6lzbiGV2Go9
 4W7zcJFeCOPnkHqQL/2MfvvdPKXUVgINshk7/DfcfLhZcINi9FtITLl+sdZIk3wFV3zJuxH6+Kf
 0mVDKEx7Fql7GF/l2CrtW3xPxnNx1ceq7FGugTQ0gP+FMBModJ9TbB8NHaAJ4bTW3IQ6Oofo8lg
 tlFDOaLch+lyF0fmxPT665Xtyfbt
X-Received: by 2002:a05:690e:14ca:b0:652:ddea:11f1 with SMTP id
 956f58d0204a3-652ddea24a2mr2317961d50.30.1776234809273; Tue, 14 Apr 2026
 23:33:29 -0700 (PDT)
MIME-Version: 1.0
References: <20260413112030.2694563-1-lgs201920130244@gmail.com>
 <5da15f31-e9af-4f8d-82fd-eac29a6d98f6@intel.com>
 <CANUHTR8uNVWR48xs90s+MtGQ6J-1j5R0+64MKVGin0cf-FjRWA@mail.gmail.com>
 <143881d9-02d5-42be-bf77-9fe9e8353c06@intel.com>
In-Reply-To: <143881d9-02d5-42be-bf77-9fe9e8353c06@intel.com>
From: Guangshuo Li <lgs201920130244@gmail.com>
Date: Wed, 15 Apr 2026 14:33:16 +0800
X-Gm-Features: AQROBzB0J22GUf7_6jCosTMhAtK8yiANwxMUFPDIVG2xrZyTeQWs76gB0isBNRQ
Message-ID: <CANUHTR_ecExv+7JzJ9G0H7kTnPfOWr+epyvJ=qxGF=SvdCU9BQ@mail.gmail.com>
To: Jacob Keller <jacob.e.keller@intel.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Joshua Hay <joshua.a.hay@intel.com>, 
 Tatyana Nikolova <tatyana.e.nikolova@intel.com>,
 Madhu Chittim <madhu.chittim@intel.com>, 
 intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1776234809; x=1776839609; darn=lists.osuosl.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=I/YGk6diE6DwfvFh1WTj1ikmEooEeeXvUwgqkLXnYMI=;
 b=SmshSWcSiJ8TVoqVRXMIkiiwO7DBMF8+StoXK6V7bomx5Fvatm+TN2k2mwBflwFbnH
 Y4CEmoq/gzCEGS6GbXP6TJokhAMYRw+cr6dxNzkRRurBHIHvypztbEDRMXzNsCm6b2A0
 AqkEwFSk93PNFfArv4e1EpifzKFk4UO4LOqLm/Hul2a+3PzYHQLCPNhkrTsaTZUJkzki
 JjsyUj/txF584Rme3uZ+JNlqtINbx4F0w5FSv9Vy+Xx94qtV4v+q7Za1woJv6rtPJlNz
 R/sIQdsSihUzBQOXd8YPvSVmVGhldo+nugbSo7u9fcG4n1WLZRbCypOpi23fVIu9/gh0
 vR7A==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20251104 header.b=SmshSWcS
Subject: Re: [Intel-wired-lan] [PATCH v2] dpf: fix UAF and double free in
 idpf_plug_vport_aux_dev() error path
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:joshua.a.hay@intel.com,m:tatyana.e.nikolova@intel.com,m:madhu.chittim@intel.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:gregkh@linuxfoundation.org,m:stable@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[lgs201920130244@gmail.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,mail.gmail.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[lgs201920130244@gmail.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[8]
X-Rspamd-Queue-Id: 2118B400DC2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Jacob,

Thanks for reviewing.

On Wed, 15 Apr 2026 at 13:37, Jacob Keller <jacob.e.keller@intel.com> wrote:
>
> No problem. I had missed the other version, which explains my confusion.
> Still, to my eyes, the fix looks to be an equivalent fix as one
> submitted by GregKH:
>
> https://lore.kernel.org/intel-wired-lan/2026041116-retail-bagginess-250f@gregkh/
>
> Do you agree this is effectively a different fix for the same problem?
> Or is there really two different double-free issues here that both need
> patching? I haven't been able to fully convince my self either way, but
> I am leaning on this being one problem, and I think Gregs solution feels
> simpler to understand.
>
> Thanks,
> Jake
>
> >
> > Thanks,
> > Guangshuo
>
Yes, I agree Greg's patch addresses the same underlying issue.

For the other path in `idpf_plug_core_aux_dev()`, I had also
previously sent a fix, for reference:

v1:
https://lkml.org/lkml/2026/3/18/1822

v2:
https://lkml.org/lkml/2026/3/19/1285

The v2 for the core path was posted after discussion on the list and
incorporated the feedback I received there.

So my understanding is that Greg's patch covers the same class of
issue in both places, while I had sent them as separate fixes.

Thanks,
Guangshuo
