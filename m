Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E0A2EC01D
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Jan 2021 16:07:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DF57685A22;
	Wed,  6 Jan 2021 15:06:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ilNRSaE9VwiC; Wed,  6 Jan 2021 15:06:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2619B85B0A;
	Wed,  6 Jan 2021 15:06:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DE8A91BF34B
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 13:45:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D1F1B204DB
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 13:45:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 73177Z47+xY8 for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Jan 2021 13:45:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43])
 by silver.osuosl.org (Postfix) with ESMTPS id 5DD12204C7
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Jan 2021 13:45:20 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id n26so5084893eju.6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 06 Jan 2021 05:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=FeJdQ/c5c3Yk5ETXkZRfgUT36HQYoNuNNY5hhZyt1Zw=;
 b=hSC55QP6a+jYHRxCa+TgeWcHTDjcrHo0Y56fHl+KSs4kIqESl4MXCSckZ+YoDGe1N0
 /ucn8xl1M5eSFXXgKAf04Kdczt/jlyFXX6QL+vDWgU0YMY88lU7ODUlncMy+A0k7Wb6V
 gVY7Bc4nzPmw/XGlLPm0coTTox5ZeDmqtbdHN8b860ei4H2rqMTSuhrdd0rcInFouw/R
 cyZPXO5ttKNNn14k60uqEsiwL/JKgt0wSxikJkAXAQY6yzhVxNF5Qz43HSCti7/04Ll0
 m7cWPj+mnCMh+dijqzjx0K0KRLo/a9/g5MhNQaIIRCFDWqsLT1u/5cNwY0E+1g59Xx54
 Nf5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FeJdQ/c5c3Yk5ETXkZRfgUT36HQYoNuNNY5hhZyt1Zw=;
 b=amgUbjfJRvB+AxETE/ZiH8rW/YQLBpVS2/+02pz6LkBh2msVhb5wbWD8gf/IBmL7Er
 s0zVnkF9G8hZAMUYZ7QryJODbTPyTqzX+jwyYcmVSwpKu4WYU0EJeVXcK3NGI5Yg1aMn
 KmYZ56cqU2tDuwBmbpuwRQSu4f+NMl3g+xQ3eEbuSYyrDWhX64VlbybnmsRVd1lJZ0H7
 N9AowXuLe1krxA35tc45Fc1K//d3CmG5dmvk4n56JjvKbbXzRWOfnuUkrFxAW68cB2Cj
 83M0ehSxpX2QaEEOUnB4PWeRbfgvIrDQoKrfIMGL0STnrBEVQ8zLXJI8WoczjzLK0rx0
 +2rA==
X-Gm-Message-State: AOAM530GMWaW+xiR3MmnipBelI1bnsIc4l7fF7YTl2m7fkRAqkk1T1Rt
 vU7FdhXU38JVXSDrM1MXdEc=
X-Google-Smtp-Source: ABdhPJy+1yovqw8J45ec7rwvhTOy5Zsk9UBBbrIpibmzvsCCOp1GbbwivAw4eZio5ckmV8dO4hgrRQ==
X-Received: by 2002:a17:906:2984:: with SMTP id
 x4mr2962425eje.239.1609940718823; 
 Wed, 06 Jan 2021 05:45:18 -0800 (PST)
Received: from skbuf (5-12-227-87.residential.rdsnet.ro. [5.12.227.87])
 by smtp.gmail.com with ESMTPSA id z26sm1470222edl.71.2021.01.06.05.45.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 Jan 2021 05:45:18 -0800 (PST)
Date: Wed, 6 Jan 2021 15:45:16 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
Message-ID: <20210106134516.jnh2b5p5oww4cghz@skbuf>
References: <20210105185902.3922928-1-olteanv@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210105185902.3922928-1-olteanv@gmail.com>
X-Mailman-Approved-At: Wed, 06 Jan 2021 15:06:57 +0000
Subject: Re: [Intel-wired-lan] [RFC PATCH v2 net-next 00/12] Make
 .ndo_get_stats64 sleepable
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Andrew Lunn <andrew@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 George McCollister <george.mccollister@gmail.com>,
 Eric Dumazet <edumazet@google.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Andy Gospodarek <andy@greyhouse.net>, dev@openvswitch.org,
 linux-s390@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Oleksij Rempel <o.rempel@pengutronix.de>, Veaceslav Falico <vfalico@gmail.com>,
 intel-wired-lan@lists.osuosl.org,
 =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Andrii Nakryiko <andriin@fb.com>, Pablo Neira Ayuso <pablo@netfilter.org>,
 Arnd Bergmann <arnd@arndb.de>, Jay Vosburgh <j.vosburgh@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Jiri Benc <jbenc@redhat.com>,
 Jiri Pirko <jiri@mellanox.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-scsi@vger.kernel.org,
 linux-parisc@vger.kernel.org, Paul Gortmaker <paul.gortmaker@windriver.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Florian Westphal <fw@strlen.de>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Taehee Yoo <ap420073@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jan 05, 2021 at 08:58:50PM +0200, Vladimir Oltean wrote:
> This is marked as Request For Comments for a reason.

If nobody has any objections, I will remove the memory leaks I
introduced to check if anybody is paying attention, and I will resubmit
this as a non-RFC series.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
