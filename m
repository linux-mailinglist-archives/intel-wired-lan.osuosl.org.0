Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7865AC983A1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 01 Dec 2025 17:24:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E6739409FC;
	Mon,  1 Dec 2025 16:24:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zeicxOQCmKC1; Mon,  1 Dec 2025 16:24:41 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6EFF040A20
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1764606281;
	bh=R1I+uJ/sne3ODi0I5rhgl1VBy+mSK7EuH1XFyAWlLB4=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RqxjzOEGAKn3/Rcst+ZsqIbR4og816flXDB12lZ1Q8iyJFL9yAh28vyf9XII0PGPU
	 TwTO/QV+r+UJrm39cpvIouupuzRREKtJ6Efa8xEESklDN6TnA9hIq0IrGrkVbsMZOv
	 0NvuomLRE0gStxk3yU0GgYdr1CXPxFJtwQqwnb/TuX0fmen4ZS0cy1Kfu9QoLRBSn1
	 SkpXtRmByqA8PbRKxDvUU04hpxIS+hqkibsjxPVlJDmKu2/cDru5hGFyL3YLsJvg+P
	 djSVo0RUbnuec6vF882+Tq8yD5oYUZUo6NkIyT9Ac7SgjTZQpb6RDtbzXM1SADSBQu
	 vE2Bn4UG2de0w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6EFF040A20;
	Mon,  1 Dec 2025 16:24:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id CDB8635E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 17:39:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B3E6F841A9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 17:39:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eooMBzgN00_Y for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Nov 2025 17:39:15 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52d; helo=mail-ed1-x52d.google.com;
 envelope-from=thostet@google.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D68D5841A8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D68D5841A8
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com
 [IPv6:2a00:1450:4864:20::52d])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D68D5841A8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 17:39:14 +0000 (UTC)
Received: by mail-ed1-x52d.google.com with SMTP id
 4fb4d7f45d1cf-643165976dcso13467a12.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Nov 2025 09:39:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764178753; x=1764783553;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=R1I+uJ/sne3ODi0I5rhgl1VBy+mSK7EuH1XFyAWlLB4=;
 b=ftDzB5DIjg436L9phoP7CUPcg6HrzbXWYNeGHf8HYe6GUVIFXI+7EQSO8wU/Kr4kE7
 d3vmxTOSeRIKYePWjal+PIaGLYJfPpKMOQHKC3Q6Z71Pj4bAAlXDmXvJqfQRaVS01Oyk
 NgXlyNngQLCpxbzmUSLMrRPhbDrYQA95T4Ky+U4sayO3GvnxMqgkM9jAxU5DkMoFKsP+
 WrV7cjGcV1CE62QjdhXRaRTVwfJS/9aOA65Gw0Pc0tjtbQToXZT0QDHDiBrSJYaP2Q+X
 k/8saZy2kuA4MwnZrkOhYrHiPR3g8aQ15HePujgRxB3mgila46G4yJsMNFqAyOKyZZ/l
 mWeQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXS4eZDdAAUuS6856wBtiaYkrmf0ZgzTjj9SOpwRGt/CH3lvmvFaOz7EDc/Ee9oeG+4329cdir5tHiB4jZ3Si4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Ywlov7BUatR/oTLMxEjEjsCGkq1PeTkodDfgi4uepMh0EBUQcz+
 aEK+COMSu8PRtx5YXomEccdI0pp1pf+ByQV2D2BzY3JvBENwXnPrbhTSx4RbEeSKtK9zx7GFRSz
 QJn6qXKowAro5dScNOAnUO7bVo62qhfOi2gd1pvY3
X-Gm-Gg: ASbGncssdaN2AK6ynfOHqv4hNklbBuiiFs7FKRLImTZ3LDYjOmrCyYt+8ZAViHrI1+j
 X5rmMzOnZ4R9leW5BXsBy1HK/GJSvJX5jEGqXHQDM/YFtvQGJyTN2lna+JwCE8NAx8XWLz3eQ+l
 R3JwGKapVIKoSeuAGoLmnCqzIMg1jrr6c8WZ3QD7HTwWcrqGeUyr+M77QZRGH9sfJ222lfmQtT7
 niHOSAYBbsI/xcyhV4cgi/vIEh3nyEQQqvKyu93kPn89YDu5//0k1sb347+vqG7xyQ1p6drT/pf
 X0CcoCk=
X-Google-Smtp-Source: AGHT+IEkGK/VHxp1lm1rvuHJf0EzAfe7zdVnaY0ne4s+608bQz6lFzGkrtc5jOoeA5Aed/P/aq8jpGwwN4k9ODR79Fk=
X-Received: by 2002:aa7:c458:0:b0:643:bfa:62d0 with SMTP id
 4fb4d7f45d1cf-646014fd34dmr33248a12.10.1764178752509; Wed, 26 Nov 2025
 09:39:12 -0800 (PST)
MIME-Version: 1.0
References: <20251126094850.2842557-1-mschmidt@redhat.com>
In-Reply-To: <20251126094850.2842557-1-mschmidt@redhat.com>
From: Tim Hostetler <thostet@google.com>
Date: Wed, 26 Nov 2025 09:39:01 -0800
X-Gm-Features: AWmQ_bnwtAMUJOIKVfMGtvWBZahdFkBhWMQmC9LHTDnDUnFiDtU2cq_7mHmDfEc
Message-ID: <CAByH8Uu3ZBa1Zux=TLAGR2+VAHT+AoS0oHvqaMmgCHWVfmZhUA@mail.gmail.com>
To: Michal Schmidt <mschmidt@redhat.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>,
 Sai Krishna <saikrishnag@marvell.com>, 
 Simon Horman <horms@kernel.org>, Jacob Keller <jacob.e.keller@intel.com>, 
 Ahmed Zaki <ahmed.zaki@intel.com>, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Mon, 01 Dec 2025 16:24:40 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1764178753; x=1764783553; darn=lists.osuosl.org;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=R1I+uJ/sne3ODi0I5rhgl1VBy+mSK7EuH1XFyAWlLB4=;
 b=uWq4XKhC1K9jIh0DVuxvw/rI3xnrZ2C2aySdWGlQmXf7r/fJWCESd3cXjU6qjh+vU2
 FTsaf36Rcz6qLTEBLU3T1Fe93Tq81SAAw97r3/ZR6AQWrWs8j8uWy3V0nOBuiKaNjubk
 QoOz3J3CwsqhVpU1K6dhuEioq5lf7eHgUcMeHF2rS9aEGZD8417GACUDxQVlmjfgp4ke
 rscVooDyiL3VO+JatZdr9Yt9oZe4fkD2hsWp+GziH1TUKDO3+LZiw4VPmQkhXpu+bJjm
 gJjD3PxVButvJEOGayS7m1GQqnsgWXMfLadgeoFic8R4uV02TisgaGrVBd0hh29IwxH6
 4u8Q==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=google.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=google.com header.i=@google.com
 header.a=rsa-sha256 header.s=20230601 header.b=uWq4XKhC
Subject: Re: [Intel-wired-lan] [PATCH net] iavf: Implement settime64 with
 -EOPNOTSUPP
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

On Wed, Nov 26, 2025 at 1:49=E2=80=AFAM Michal Schmidt <mschmidt@redhat.com=
> wrote:
>
> ptp_clock_settime() assumes every ptp_clock has implemented settime64().
> Stub it with -EOPNOTSUPP to prevent a NULL dereference.
>
> The fix is similar to commit 329d050bbe63 ("gve: Implement settime64
> with -EOPNOTSUPP").
>
> Fixes: d734223b2f0d ("iavf: add initial framework for registering PTP clo=
ck")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

Reviewed-by: Tim Hostetler <thostet@google.com>
