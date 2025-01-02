Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 970E49FFB48
	for <lists+intel-wired-lan@lfdr.de>; Thu,  2 Jan 2025 17:01:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 30EB7608DC;
	Thu,  2 Jan 2025 16:01:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id beHqUz-Jgb-N; Thu,  2 Jan 2025 16:01:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 702CC608D9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1735833685;
	bh=VjDvxsly0BH4NzT+IRTvfxPmn4b6Bp8DG9daG17H8I4=;
	h=To:Cc:References:From:Date:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Wrm2HDTPHzKCZwsQj0X9rJj6CJ2w9MHd+gwfatYMX2dBfYfgGfEtyqkMihUU+VDj6
	 djml2Ud4It0KFvz8lTbt9SwfT1dgIt+6CB9jJx1shIshdb4gbT/QOXMXN2HIhTJLBS
	 Nijz/hKKcA0gOr29b87jSlVu7TZ3f2VChRKfq3+ivU7UPAl8rkkvSM5RmTKszZwFP5
	 N6naHkvlTBl36kZIf8saFtyB33GH58bSVAsIqrD34xQ078i0EuA6IehUdgepj+6O5p
	 Ve4VZ26rppgyr6T3r+WqQ+j+b+y8mxCFaPcXdDG9Fw4QR0kq5dSdpzsRPzVvQ1rK7l
	 1BXWCYiYMCwig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 702CC608D9;
	Thu,  2 Jan 2025 16:01:25 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 79070E0F
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 16:01:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 579D9608D9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 16:01:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZgLDEN7jm83p for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jan 2025 16:01:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2a00:1450:4864:20::32a; helo=mail-wm1-x32a.google.com;
 envelope-from=ecree.xilinx@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7838C608CB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7838C608CB
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com
 [IPv6:2a00:1450:4864:20::32a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7838C608CB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jan 2025 16:01:22 +0000 (UTC)
Received: by mail-wm1-x32a.google.com with SMTP id
 5b1f17b1804b1-4361c705434so83615815e9.3
 for <intel-wired-lan@lists.osuosl.org>; Thu, 02 Jan 2025 08:01:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735833680; x=1736438480;
 h=content-transfer-encoding:content-language:in-reply-to:mime-version
 :user-agent:date:message-id:from:references:cc:to:subject
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=VjDvxsly0BH4NzT+IRTvfxPmn4b6Bp8DG9daG17H8I4=;
 b=QdmrNTA1wSTDlmnuQ5wLZDVBa12mmoARoi4pyA3WhSc5Vd5jfn5CNdnao9x+dM0G03
 +pkKakUIzuElyf2IavketKHiHCgEB8T1o33YE+SGXxjEM1dgjaqrSK8fDnpOjFqjwBJd
 8trhcqdK6l/9dvHTEOEfWnsYJTR1nwMEbrQPc+fjHo95G7xguZETU/9rYk6rl1PfNn3F
 8dudrZJFBNbV5GzoCV1ucUjlfOTTebv/xDJZI6WCCmuj4o7XvPTUw16PCFjKkwnBJxlW
 6Z/uHBCBvziyLhXHBygk1i8qYIryqFOJ/FBKixiuH3eWGblb7gs2OeKmIH5pNmUBc/wY
 btLw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWCBo3+sJovz1gNh1YdTPLUVOvd2G9TY1p11SD0UZQVDbZILwbdZr5nxA/31UjUAl3YfNv6ftmF2R5cNaPDhQ0=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyKtQdaGzVemtWfCkvfaV+9bE7O8zSYtMLBHSBE1j7ytWUJngXj
 Yx+a0h8bWFH8WNs1GBJDBe2paPxhL9OlpyBWSN9qEy9SRdow/HK8VPWSqg==
X-Gm-Gg: ASbGncsUVrmdMgKc7LCHgsxUt/edz3Ahwm0JTIMeEbjfuiIj/UHSJ//E8zRFOddNWpl
 pNtQQpxp4fjkiaheVhWIg/ul1Zh9Y3T+gQX2qx5GVxnMwEwski9/hwCDaJClHk9jcU8sKQItq/c
 Wm/HFwcfsyE6MYKqGAJD6m1e9u3Bm0nfR+8f+UB4azJbRiIVfwmzqtm3RG1WPX9+FpoxDbVf0V+
 hMIbAh7Fny+1S+ImG2IrqFZsFR/JIBkXOYGyqcETJ7sFmjvDt6y+oHN5kqZZLncLvbEMM836lm9
 IFJeNeVsP8bJWGAMHSsZIh1Rdp4iJgLirLT7LybWmw5I
X-Google-Smtp-Source: AGHT+IGhMQp+xDDDjLTohY2Xyoz9SB3saaToYRCcSeHcyJLBvMiZYJC+z03YraYzEiVsqOynkppX6A==
X-Received: by 2002:a05:600c:1d1d:b0:431:5044:e388 with SMTP id
 5b1f17b1804b1-43668b5e172mr371349245e9.22.1735833679939; 
 Thu, 02 Jan 2025 08:01:19 -0800 (PST)
Received: from [192.168.1.122]
 (cpc159313-cmbg20-2-0-cust161.5-4.cable.virginm.net. [82.0.78.162])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-43656b013e1sm484963135e9.12.2025.01.02.08.01.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Jan 2025 08:01:19 -0800 (PST)
To: Haifeng Xu <haifeng.xu@shopee.com>, Eric Dumazet <edumazet@google.com>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 "David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org
References: <da83df12-d7e2-41fe-a303-290640e2a4a4@shopee.com>
 <CANn89iKVVS=ODm9jKnwG0d_FNUJ7zdYxeDYDyyOb74y3ELJLdA@mail.gmail.com>
 <c2c94aa3-c557-4a74-82fc-d88821522a8f@shopee.com>
 <CANn89iLZQOegmzpK5rX0p++utV=XaxY8S-+H+zdeHzT3iYjXWw@mail.gmail.com>
 <b9c88c0f-7909-43a3-8229-2b0ce7c68c10@shopee.com>
From: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <87e945f6-2811-0ddb-1666-06accd126efb@gmail.com>
Date: Thu, 2 Jan 2025 16:01:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <b9c88c0f-7909-43a3-8229-2b0ce7c68c10@shopee.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1735833680; x=1736438480; darn=lists.osuosl.org;
 h=content-transfer-encoding:content-language:in-reply-to:mime-version
 :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
 :subject:date:message-id:reply-to;
 bh=VjDvxsly0BH4NzT+IRTvfxPmn4b6Bp8DG9daG17H8I4=;
 b=JJzJleSiTe075BXIKabfIMLC/NmKtoaNL1g3CXXGQzCF4PhoBI6vviLSExs5Jj6DLX
 42eTNbvgOUk0Fobfvp+tNEO+9awZExleq6I0SIwmcvVV889RIoi+ej8av2u5F2LjfaLA
 kBVJhhH1P510F1IK4xKrEoJ9UiBYz0++fBpJPBa1f2Nryrof+2bAG4sYZQnx1+1uv+1v
 gNZdJfVbjovfh1/g6IYLeI2/dHTSQJlbxdQtd7lSZvkI9g7axLDoPfm/+LFDk3nBBU9G
 DvKTJ6+/e0e1g/FhCBkVOt6DOO/GGB/xLKApc192DO/W51aNsa5TNBgO4lqADx8hOYaR
 PWxA==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=JJzJleSi
Subject: Re: [Intel-wired-lan] 
 =?utf-8?b?W1F1ZXN0aW9uXSBpeGdiZe+8mk1lY2hhbmlz?=
 =?utf-8?q?m_of_RSS?=
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

On 02/01/2025 11:23, Haifeng Xu wrote:
> We want to make full use of cpu resources to receive packets. So
> we enable 63 rx queues. But we found the rate of interrupt growth
> on cpu 0~15 is faster than other cpus(almost twice).
...
> I am confused that why ixgbe NIC can dispatch the packets
> to the rx queues that not specified in RSS configuration.

Hypothesis: it isn't doing so, RX is only happening on cpus (and
 queues) 0-15, but the other CPUs are still sending traffic and
 thus getting TX completion interrupts from their TX queues.
`ethtool -S` output has per-queue traffic stats which should
 confirm this.

(But Eric is right that if you _want_ RX to use every CPU you
 should just change the indirection table.)
