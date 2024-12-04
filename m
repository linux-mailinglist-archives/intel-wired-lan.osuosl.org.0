Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AB31C9E3746
	for <lists+intel-wired-lan@lfdr.de>; Wed,  4 Dec 2024 11:12:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0847940D97;
	Wed,  4 Dec 2024 10:12:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 4vxdg0D6osna; Wed,  4 Dec 2024 10:12:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA0484135F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1733307154;
	bh=r8yJtp0VtRWCyGUDMUPSKyYrOKeXIERy5/6YkYGZGIw=;
	h=References:In-Reply-To:From:Date:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=vLdS6A0xVmXQI3/RBFzpxW2ji063Y+uIVgCnV+Dqk3L52YQpYqvk9OtPX8APKfTmM
	 4Rcq8OB4XOMmWh6phekn/3nKqZqkW4el3MLn1Qm1NNvynJwa+YAIFIAd9iH33+PfvH
	 rbOTTKwta9KnnS7mW5MGvLfXkO+rPh+kGKV3yv6P4J06zfnLyBpIvI5HvCRFSR1F8Z
	 xhtBUsgCDeKxMBXJ76I6HrM1ZYHcJSgKPt1VA0IEva63evSCjNkRvvimtYIkRYO6t7
	 v+wPePlhaD2Ab5WCoeQ1aUFpmwOsBv38NqaGBpfROeK1EeUF4AKpm5a99NhXfkddsO
	 pJFlxzDtqB2Wg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA0484135F;
	Wed,  4 Dec 2024 10:12:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id C75C51DC8
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 10:12:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B4BDF400DD
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 10:12:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kTreWmWInXsC for <intel-wired-lan@lists.osuosl.org>;
 Wed,  4 Dec 2024 10:12:31 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::1130; helo=mail-yw1-x1130.google.com;
 envelope-from=andrew@andrewstrohman.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org CFE0E400E2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFE0E400E2
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com
 [IPv6:2607:f8b0:4864:20::1130])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CFE0E400E2
 for <intel-wired-lan@lists.osuosl.org>; Wed,  4 Dec 2024 10:12:30 +0000 (UTC)
Received: by mail-yw1-x1130.google.com with SMTP id
 00721157ae682-6ef7f8d4f30so40769747b3.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 04 Dec 2024 02:12:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733307149; x=1733911949;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=r8yJtp0VtRWCyGUDMUPSKyYrOKeXIERy5/6YkYGZGIw=;
 b=q2Q4/oTdaSy7FxlvQEc+AE7wp0Ig4K1CL8FF06VULMRhUiEEsQjrVkXd4aFjHnybrF
 zfW6jsXlbarivCvcpHwK81IcoxaD2e7eI5hr1UPgO+ZZYapyjD6IIsEZwiflTuq98jCH
 MI7PoAbLKJDxcnwEKxbX9N3WJSHM1mu/keC1YdnCZCAQ5rux+tOQYeeBYgPwf0Y9G6Op
 0MDi5NpQl7AATLObsFmx4rc3x4LM57m8EJfQbl9JJRH1VAUrmyFUYUyvugxz8abIxnza
 1lZS6qS5Sl3MOiCBNz9NlSJ1Vce6E3Fl7PyJ+VtvK43oUQrVlmrMwT2xPrOTk/YZ2tUE
 rKIA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWGlvekAXsVkwbTlqyRzujB08ZiHDKVqOnvvBaLFh5Wd8VS3lqXEP3h3Sg3SDTs6KTF/v58HYjbLLVV4Co9CVw=@lists.osuosl.org
X-Gm-Message-State: AOJu0YyQ9b/VJ4SP5QjeuTMfUqsUs0FqGy320K1bv+qXj3hZtxtVFoVy
 x1sbjZnxng72f5vnhGUe/MZYwFKRDUT9sryyeiItB5RqpN9YgibT+VdTIOrS83KNmNbiE1erquD
 m4ciafOhY9tfMIKvw+9C83JWCJfFXGBQ9IC1afA==
X-Gm-Gg: ASbGncsurryyLkVQKpPG4UPG4e4C+iAk7+l1JFlUWSJJyTkly6jnaK/YoCnono3geB8
 ypgALywlKixfeRWX759XGCcf+TlRxxJE=
X-Google-Smtp-Source: AGHT+IFiZwav0lkXcdEoC0k0swq2tYz4RZsKxcJnENpHGhhnbUCXatljeleEVM5PesTsKopimNNDdHD+hwBm2MoI2HY=
X-Received: by 2002:a05:690c:46c7:b0:6ef:69b2:eac with SMTP id
 00721157ae682-6eface0164dmr68389077b3.4.1733307149315; Wed, 04 Dec 2024
 02:12:29 -0800 (PST)
MIME-Version: 1.0
References: <20241130000802.2822146-1-andrew@andrewstrohman.com>
 <Z0s3pDGGE0zXq0UE@penguin>
 <CAA8ajJmn-jWTweDMO48y7Dtk3XPEhnH0QbFj5J5RH4KgXog4ZQ@mail.gmail.com>
 <20241202100635.hkowskequgsrqqkf@skbuf>
 <CAA8ajJkPzpGRXO6tX5CkgX7DjGwR6bPyT4AXjZ0z8kXBk8Vr_g@mail.gmail.com>
 <20241204084817.g7tort3v3gwdzeic@skbuf>
In-Reply-To: <20241204084817.g7tort3v3gwdzeic@skbuf>
From: Andrew Strohman <andrew@andrewstrohman.com>
Date: Wed, 4 Dec 2024 02:12:18 -0800
Message-ID: <CAA8ajJnRPB=KRcDpQiAJww3Apv6ZGqWaAg5stSjOE99BOmkCjg@mail.gmail.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: Nikolay Aleksandrov <razor@blackwall.org>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Ido Schimmel <idosch@nvidia.com>, 
 Petr Machata <petrm@nvidia.com>, Claudiu Manoil <claudiu.manoil@nxp.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>, UNGLinuxDriver@microchip.com,
 Shahed Shaikh <shshaikh@marvell.com>, Manish Chopra <manishc@marvell.com>,
 GR-Linux-NIC-Dev@marvell.com, 
 Simon Horman <horms@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 Roopa Prabhu <roopa@nvidia.com>, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-trace-kernel@vger.kernel.org, 
 bridge@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=andrewstrohman-com.20230601.gappssmtp.com; s=20230601; t=1733307149;
 x=1733911949; darn=lists.osuosl.org; 
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=r8yJtp0VtRWCyGUDMUPSKyYrOKeXIERy5/6YkYGZGIw=;
 b=Ajp2THYaXS1jKHn9zI/0SPNaoTxao7g4q6o3JSNITtvrWewhb3ywwipfmxsX5TxEM/
 bguFzkhDKkjJXbzjZ1lY3hAW09AobHWfjDNqlhaQ2xdFOHIC+MMjz0J1zv+5QpvSdE7W
 8BKdtJTib4DFvXWhUhF9z+JL9VpVZeuViU/yPJaRY+lxRHvCK6sHTMOMu+fqFhahx/XO
 gNdYpzZs8pf3xttcD5XEi28Wgehncd8jlqPZsLA9jKqFZAtaAA/WztDCqaPwbQAwWAhc
 l7GelaLMo49RAYh+1b/sOKsc+FNd3xH9NsFgM8B77PUvzIZoTQm6PY+qJW/+W+DF3Z6I
 A63w==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=andrewstrohman.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=andrewstrohman-com.20230601.gappssmtp.com
 header.i=@andrewstrohman-com.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=Ajp2THYa
Subject: Re: [Intel-wired-lan] [PATCH net-next] bridge: Make the FDB
 consider inner tag for Q-in-Q
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

> I didn't say "tagged". I just said "not PVID". There are 2 independent
> bridge VLAN attributes: "pvid" and [egress-]"untagged". I am suggesting
> that packets in VID 3, 4, 5 all exit the 802.1ad bridge untagged, but
> every bridge port has a unique PVID from this range.
>
> bridge vlan add dev port1 vid 3 pvid untagged
> bridge vlan add dev port1 vid 4 untagged
> bridge vlan add dev port1 vid 5 untagged
>
> bridge vlan add dev port1 vid 3 untagged
> bridge vlan add dev port1 vid 4 pvid untagged
> bridge vlan add dev port1 vid 5 untagged
>
> bridge vlan add dev port1 vid 3 untagged
> bridge vlan add dev port1 vid 4 untagged
> bridge vlan add dev port1 vid 5 pvid untagged

Thanks for the clarification. I think you meant to have the second
set of three commands affect port2 and the third set of three
commands affect port3. Please let me know if I'm wrong
about this.

I gave this a try:

root@OpenWrt:~# bridge vlan show
port              vlan-id
lan1              3 PVID Egress Untagged
                  4 Egress Untagged
                  5 Egress Untagged
lan2              3 Egress Untagged
                  4 PVID Egress Untagged
                  5 Egress Untagged
lan3              3 Egress Untagged
                  4 Egress Untagged
                  5 PVID Egress Untagged
root@OpenWrt:~# bridge fdb show dynamic
f4:a4:54:80:93:2f dev lan1 vlan 3 master br-lan
e0:3f:49:47:9a:38 dev lan2 vlan 4 master br-lan
f4:a4:54:81:7a:90 dev lan3 vlan 5 master br-lan

Like you said, this has a FDB per port. But I think
I need to have a FDB per inner/outer VLAN combination.

Connectiving works as expected in the above example,
but only because of unknown-unicast flood, which of course,
is suboptimal. The switch is acting like a hub.

For example, ever time the host behind lan1 sends a frame
to the host behind lan2, the bridge is not able to find an FDB
entry for the VID corresponding to PVID of lan1 and the MAC
of the host behind lan2. The only FDB entry for the MAC
corresponding to the host behind lan2 is associated with
the VID corresponding to the PVID of lan2 (which is a
different VID than what the packet arrived on).
Hence, there is constant unicast flood.

I also don't think that this solves the issue for
https://docs.google.com/drawings/d/1FybJP3UyCPxVQRGxAqGztO4Qc5mgXclV4m-QEyfUFQ8
. If you like, I'm happy to explain why. But before I do, I want to
make sure we are on the same page before going further.

Thanks,

Andy
