Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D7CD18D36
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jan 2026 13:40:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3B93784977;
	Tue, 13 Jan 2026 12:40:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id FjgHLiueeA4g; Tue, 13 Jan 2026 12:40:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B972D849A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768308052;
	bh=oo3D+KUuyl/yK0+7LdxWePxgnNUD84eN60bLtmw0kwY=;
	h=To:Cc:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From:Reply-To:From;
	b=YDbcIf6Z4ZzUSdvUd4s7djCzPElE0/EYrxkKaGkpy7KxPpqWj02Q61XEcegSmJEVF
	 tcIv02zJJDzae1KOPSI1xM7wW6Ofl8Bseeqoah2jjwjHqQQohEt6mH0bb5JToD6APC
	 C5/Ih9UYUmMfVamSunUfp6tz42zNk9WBplAaKpQyUhVkpciyMXRWf4aXiA+E3lpEGd
	 fTmpCrAbVjPQjV53TDfJ0a7y6nN/3/J1286UUSbG2Wtv5TnczSt35kR3QQZTru4Tlq
	 gIY5WNM4mbuaZGemalpKa9cYGXqesDfxkRFzuz3b1zsXCd/E1M+10U7WPdQRkpDpPt
	 9ICI0YDr9W31Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B972D849A9;
	Tue, 13 Jan 2026 12:40:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id B9F01231
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:40:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9F3F14048F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:40:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 27-A9Elm0Mt9 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jan 2026 12:40:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::52e; helo=mail-ed1-x52e.google.com;
 envelope-from=jakub@cloudflare.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 8B6B040087
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8B6B040087
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com
 [IPv6:2a00:1450:4864:20::52e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8B6B040087
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 12:40:49 +0000 (UTC)
Received: by mail-ed1-x52e.google.com with SMTP id
 4fb4d7f45d1cf-64b608ffca7so11727846a12.3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jan 2026 04:40:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1768308047; x=1768912847;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=oo3D+KUuyl/yK0+7LdxWePxgnNUD84eN60bLtmw0kwY=;
 b=kkBy6eME6DhMRnZDvtGwXwtapQvVCcQr2brMPkZjOtBeWSdrIcqs+JU1p5NGTSP5l+
 VOewZYSslCzuvEN7qnb2d1SC25BcjuWh3jMi+YnHxMuu47gAiRvE5wRQ8+uSgku2WckI
 ntriSJKK5yLqmBivUb3iM6siRIOugsZ3+PjfTm5exBqQlJ38SoiuJvXHgfPXcEVrUY/W
 34l0qdJSe+NtiwUXvfYKA/0RagPyPOc8v1opu4/kCyoY0RJ292keCkQN1KMXeZDpu4rM
 69Wumi5t1uc4fdPAysWh/p0ojLzt+/u+rm0tE8LpAD68gC0HnVdMbCYW9gjLP3LZqB1m
 tVSw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXGiVbVlq5dXPlSBxZUxmON8dqaWGkjmaPqI/4kORuYHI4AXqN6sn4CUmv+D0jCdQg6xcewrZPYJL85zy8WC4g=@lists.osuosl.org
X-Gm-Message-State: AOJu0YxIFYxkbu08KFOmMVvDOFExRcGJpmr1v07C1Uf6iSDFQn235xDQ
 mayVpshmi1/+7/V80/ombZ+IwXC5WV4NUI2B/PHEylyWMtDCsclyfrDnK3cZi5h2CFQ=
X-Gm-Gg: AY/fxX54EdUsUwF95iRc/Ufx1E1EIeB9LyPBY9HWYe1jFOuH0ljhpOerhxbl+6H/4ln
 6Bvd7OIE8zqeE8cH2sJ1+UgyYH5Eycjqt8w12nLlWqUNBoKMQroknBcZG0vPF+MmbiNSUDqQiTs
 +5XpRz/siAiizTNdoS+96M0boqFY+PfSGatc7RtuX1SMJFrh5dFK3TvHjps5U5HA4RTFmcBNt/h
 dFhdh3+I/Z1lUxYoBnor8aFBckbJ5v5oTJrQZ59/au8gQfQxhuqcfrKEGnTosErkF1yTCOc/fH3
 ipeCtiIz5jrRcq/q+Be/nbXLHgopCbeHd2LTVlMkzrvhXeSb7hX2EBLBsUTbwSZMEYItRhxmU/s
 k1fvgl6Pa4q2NIRgupskxFTFODZv0uH01HnhmKDMAWzCWw2ZCebw7fOt1hikvoaR26dlS+wAW5h
 kpZiOWIUaJdbhW
X-Google-Smtp-Source: AGHT+IHoJX3rCd0dhCoGHhRCveaoE/dAFFrqPqKvVA8s0p5/eN32SkcJ5IaE78DU2yIQ1+O6SF/OiA==
X-Received: by 2002:a05:6402:27ca:b0:64c:9e19:9831 with SMTP id
 4fb4d7f45d1cf-65097de5b1fmr19532557a12.12.1768308047256; 
 Tue, 13 Jan 2026 04:40:47 -0800 (PST)
Received: from cloudflare.com ([2a09:bac5:5063:2dc::49:1cb])
 by smtp.gmail.com with ESMTPSA id
 4fb4d7f45d1cf-6507bf65ca0sm19578895a12.24.2026.01.13.04.40.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jan 2026 04:40:46 -0800 (PST)
To: Paolo Abeni <pabeni@redhat.com>
Cc: Jakub Kicinski <kuba@kernel.org>,  netdev@vger.kernel.org,  "David S.
 Miller" <davem@davemloft.net>,  Eric Dumazet <edumazet@google.com>,  Simon
 Horman <horms@kernel.org>,  Michael Chan <michael.chan@broadcom.com>,
 Pavan Chebbi <pavan.chebbi@broadcom.com>,  Andrew Lunn
 <andrew+netdev@lunn.ch>,  Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,  Saeed Mahameed
 <saeedm@nvidia.com>,  Leon Romanovsky <leon@kernel.org>,  Tariq Toukan
 <tariqt@nvidia.com>,  Mark Bloch <mbloch@nvidia.com>,  Alexei Starovoitov
 <ast@kernel.org>,  Daniel Borkmann <daniel@iogearbox.net>,  Jesper
 Dangaard Brouer <hawk@kernel.org>,  John Fastabend
 <john.fastabend@gmail.com>,  Stanislav Fomichev <sdf@fomichev.me>,
 intel-wired-lan@lists.osuosl.org,  bpf@vger.kernel.org,
 kernel-team@cloudflare.com
In-Reply-To: <36deb505-1c82-4339-bb44-f72f9eacb0ac@redhat.com> (Paolo Abeni's
 message of "Tue, 13 Jan 2026 13:09:45 +0100")
References: <20260110-skb-meta-fixup-skb_metadata_set-calls-v1-0-1047878ed1b0@cloudflare.com>
 <20260112190856.3ff91f8d@kernel.org>
 <36deb505-1c82-4339-bb44-f72f9eacb0ac@redhat.com>
Date: Tue, 13 Jan 2026 13:40:46 +0100
Message-ID: <877btlwur5.fsf@cloudflare.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cloudflare.com; s=google09082023; t=1768308047; x=1768912847;
 darn=lists.osuosl.org; 
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:from:to:cc:subject:date:message-id:reply-to;
 bh=oo3D+KUuyl/yK0+7LdxWePxgnNUD84eN60bLtmw0kwY=;
 b=XbtZk86B2hKwrJO6qqYPrkVw3KxcOju2jubAt3G5u5JV2VEoBkVTlTouMRuUklUCll
 +uyei5x6gqwFEkSBje7owpoz3ap4N3SYmm5ER2gwNiDV9MPD9tCSnf/pyIfxFZi5Qsex
 Pn79W0ASXAq7K1qpHvmxDgltvr9svXRdf0cPRkwqNM88ZW4rk8NyRAdGFHzPb4FyiB8a
 qFp4qPRBctDlIK3EhWJl2e+EzExoMhio9b4wtpojrLKNhiUUpnQCgiWQqjjDhRuYlEpM
 G53hRFcUAU9x3gNJOJLBu3CNim/wF0hrVj1/pF/lKBU5NLfI+tDG0plOvIuP8sGvDbKF
 2Jhw==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=cloudflare.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=cloudflare.com header.i=@cloudflare.com
 header.a=rsa-sha256 header.s=google09082023 header.b=XbtZk86B
Subject: Re: [Intel-wired-lan] [PATCH net-next 00/10] Call skb_metadata_set
 when skb->data points past metadata
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
From: Jakub Sitnicki via Intel-wired-lan <intel-wired-lan@osuosl.org>
Reply-To: Jakub Sitnicki <jakub@cloudflare.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 13, 2026 at 01:09 PM +01, Paolo Abeni wrote:
> IIRC, at early MPTCP impl time, Eric suggested increasing struct sk_buff
> size as an alternative to the mptcp skb extension, leaving the added
> trailing part uninitialized when the sk_buff is allocated.
>
> If skb extensions usage become so ubicuos they are basically allocated
> for each packet, the total skb extension is kept under strict control
> and remains reasonable (assuming it is :), perhaps we could consider
> revisiting the above mentioned approach?

I've been thinking the same thing. Great to hear that this idea is not
new.

FWIW, in our use cases we'd want to attach metadata to the first packet
of new TCP/QUIC flow, and ocassionally to sampled skbs for tracing.

