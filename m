Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC07A12FE6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Jan 2025 01:31:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D4596416FC;
	Thu, 16 Jan 2025 00:30:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fAJZuXTcY16h; Thu, 16 Jan 2025 00:30:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BCE2F416B9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1736987457;
	bh=nbDhewnz6sF7NAjuh/IG2morMwwWY78lrdk+Dwk6HUA=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=PJEzVIECE1qbKTECMUvtY2tc/XBoIfiG+cDo7PKQ1LiiqlDoSmYSChmFm/v1SYrqX
	 DH/POVbem8k1njVrHZYWs6W54xdmrnESkoJLjhUaEqk9gfsELFo571WJClLVDxcgoa
	 Q9pLvjoxY5Dl3XF4PsWoSkcyyYsSL9zQazdXm6W0vRMRHXGbKP8WSwm7EaEIL+aEIC
	 KAQLpPvbeoXcBlbGy6cFtH0zmzOZKwmqWgirEivQB4vLDdH9RaWK/1aGy3yloN4Zyz
	 utLmO9uX2NYLibRP3QfX0Y6JFpO/Iazrh+P30lf5DpZ1z/EtocPs4mOhN4kYXTP6/K
	 xxayGqPx6pJZA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id BCE2F416B9;
	Thu, 16 Jan 2025 00:30:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5119CB8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 00:30:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 241428497C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 00:30:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nqk-FQdGbaR0 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Jan 2025 00:30:54 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::629; helo=mail-pl1-x629.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 3B68B84980
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3B68B84980
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com
 [IPv6:2607:f8b0:4864:20::629])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3B68B84980
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Jan 2025 00:30:54 +0000 (UTC)
Received: by mail-pl1-x629.google.com with SMTP id
 d9443c01a7336-2167141dfa1so6720605ad.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Jan 2025 16:30:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736987453; x=1737592253;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nbDhewnz6sF7NAjuh/IG2morMwwWY78lrdk+Dwk6HUA=;
 b=oVn/Zfq74Fq7T2uYL99OOGcupvFJf4ItDgF4ptuSKvtVmTy9WUBDT4+tpHpvdhN/9E
 CWkua2zrnfFQJKYigl9d7IEGEFCg/N+oPIyEQU+WG+IrY8uPCGqPrIQY96yjVhk/Dbwz
 Si6L13PaxoNpS2mrOrbgo/NcReHJxsOaqpX/mLv5is6WKQBp+7lGnxOxOzAy5i6hiaHQ
 W9IQOZSHROIaOtYN5NgXzywk6MyxYyFPw+PP7zX1aZfEg89ZspMio4B87rTDniCkbc9u
 e0u+GpJL97DfVx4I6Aig6D2O9+X2MIVG4rG91v7zMBIk3O77zBjPt6I3H7cd2+LJgc1T
 sJyg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVE/OMZK7hdhZlA8EP2Y27meGv5Z15zqyBEnA4NVT/wNArh8bg95BqzAZ8p0T+ckvRwnaHYKOgtzVYPXgGNT58=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwO4bvGxUma5qh5h/9kb2CMV03pZq0oFq2wGYvoGnhUlzqB3BQj
 zY/uOh5gWGfjSc7WU2C2KCVxuEAMfez8Y02GAbObZORpOSIUFu4=
X-Gm-Gg: ASbGncv7Dl9otrhZM8XW9Wf5bs/0euBY2k9uTcGE2/3wYQlnDEE43mhl7tJYY5erCOb
 C8rxoOi6LFrGFOfebFyMO0dupNNOE9/21Wu1qYvvF1boRdiFGcxq052UJVQ9fL2YTb0ry2kdCrw
 6VF9lwlaXX1QzUD8tlGgVWTS+lBzTGP18nZA9BH/gjAJAfL2juFb5Mvke+qmVyzA+EOet1VwRt3
 dgexx6UOb/umWptMKlG8vAS5R8/Ha1K3rXGsI56eOEb2L5PN5BCWyCL
X-Google-Smtp-Source: AGHT+IHL2kbDL71i52Tl5thJXHFKE0VJJEHYy6lN0jWJKKjChbh+K9Wolj1lEqEzzNUmnYNfgO9FbQ==
X-Received: by 2002:a17:903:2410:b0:216:2aec:2d54 with SMTP id
 d9443c01a7336-21bf077dbc9mr79922565ad.8.1736987453496; 
 Wed, 15 Jan 2025 16:30:53 -0800 (PST)
Received: from localhost ([2601:646:9e00:f56e:123b:cea3:439a:b3e3])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-21a9f10f6d7sm88927685ad.52.2025.01.15.16.30.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2025 16:30:53 -0800 (PST)
Date: Wed, 15 Jan 2025 16:30:52 -0800
From: Stanislav Fomichev <stfomichev@gmail.com>
To: "Song, Yoong Siang" <yoong.siang.song@intel.com>
Cc: Daniel Borkmann <daniel@iogearbox.net>,
 "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Simon Horman <horms@kernel.org>, Willem de Bruijn <willemb@google.com>,
 "Bezdeka, Florian" <florian.bezdeka@siemens.com>,
 Donald Hunter <donald.hunter@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, Bjorn Topel <bjorn@kernel.org>,
 "Karlsson, Magnus" <magnus.karlsson@intel.com>,
 "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 Jonathan Lemon <jonathan.lemon@gmail.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 Jesper Dangaard Brouer <hawk@kernel.org>,
 John Fastabend <john.fastabend@gmail.com>,
 "Damato, Joe" <jdamato@fastly.com>, Stanislav Fomichev <sdf@fomichev.me>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Mina Almasry <almasrymina@google.com>, Daniel Jurgens <danielj@nvidia.com>,
 Andrii Nakryiko <andrii@kernel.org>, Eduard Zingerman <eddyz87@gmail.com>,
 Mykola Lysenko <mykolal@fb.com>,
 Martin KaFai Lau <martin.lau@linux.dev>, Song Liu <song@kernel.org>,
 Yonghong Song <yonghong.song@linux.dev>,
 KP Singh <kpsingh@kernel.org>, Hao Luo <haoluo@google.com>,
 Jiri Olsa <jolsa@kernel.org>, Shuah Khan <shuah@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xdp-hints@xdp-project.net" <xdp-hints@xdp-project.net>
Message-ID: <Z4hTPNEGreEo6igW@mini-arch>
References: <20250114152718.120588-1-yoong.siang.song@intel.com>
 <20250114152718.120588-3-yoong.siang.song@intel.com>
 <e273b1f1-868f-440e-b226-84b493ef7ee2@iogearbox.net>
 <PH0PR11MB58300DA3845D1E3F788C4FC8D8192@PH0PR11MB5830.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PH0PR11MB58300DA3845D1E3F788C4FC8D8192@PH0PR11MB5830.namprd11.prod.outlook.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1736987453; x=1737592253; darn=lists.osuosl.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=nbDhewnz6sF7NAjuh/IG2morMwwWY78lrdk+Dwk6HUA=;
 b=UXy1poNoZt5h9TeLGokV7Mtf3bcxIuhWuu7lgkfaqrJGtArbSo0cBy5yAVGPUD2Fe7
 Kl7WUx5ckVya1ZyRpGTsum++hLqmdonZd4mEPnQ7xk4sUfPlwA8oMWNMKVZJ4BcqBsFI
 b6wIa0hVWcpqbJA5mwvm4eMqyWBaG9+xN4+sR21t/V29QQpulXzZGWQi7MHI46AuGbeY
 tEk3sXXPMko63BHJYJtu1jKbJBfRWeeNFEAYKvsE3AwLsBJJpcLoQuuWIYBjhMNaYVse
 7IBr8+RdZ5odlls6IIK/enJ7pkxXpVd1y0O23BxO22v82ztKMedwOZU7U/esh840UBfO
 3WYw==
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256
 header.s=20230601 header.b=UXy1poNo
Subject: Re: [Intel-wired-lan] [PATCH bpf-next v5 2/4] selftests/bpf: Add
 launch time request to xdp_hw_metadata
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

On 01/15, Song, Yoong Siang wrote:
> On Wednesday, January 15, 2025 10:57 PM, Daniel Borkmann <daniel@iogearbox.net> wrote:
> >On 1/14/25 4:27 PM, Song Yoong Siang wrote:
> >[...]
> >> +	/* Add mqprio qdisc with TC and hardware queue one-to-one mapping */
> >> +	char map[256] = {0};
> >> +	char queues[256] = {0};
> >> +
> >> +	for (i = 0; i < rxq; i++) {
> >> +		char buf[8];
> >> +
> >> +		snprintf(buf, sizeof(buf), "%d ", i);
> >> +		strcat(map, buf);
> >> +
> >> +		snprintf(buf, sizeof(buf), "1@%d ", i);
> >> +		strcat(queues, buf);
> >> +	}
> >> +	run_command("sudo tc qdisc add dev %s handle 8001: parent root mqprio
> >num_tc %d map %s queues %s hw 0",
> >> +		    ifname, rxq, map, queues);
> >
> >Fyi, above triggers selftest build errors:
> >
> >   xdp_hw_metadata.c: In function ‘main’:
> >   xdp_hw_metadata.c:763:45: error: ‘%d’ directive output may be truncated
> >writing between 1 and 10 bytes into a region of size 8 [-Werror=format-
> >truncation=]
> >     763 |                 snprintf(buf, sizeof(buf), "%d ", i);
> >         |                                             ^~
> >     TEST-OBJ [test_progs] arg_parsing.test.o
> >   xdp_hw_metadata.c:763:44: note: directive argument in the range [0,
> >2147483646]
> >     763 |                 snprintf(buf, sizeof(buf), "%d ", i);
> >         |                                            ^~~~~
> >   xdp_hw_metadata.c:763:17: note: ‘snprintf’ output between 3 and 12 bytes into
> >a destination of size 8
> >     763 |                 snprintf(buf, sizeof(buf), "%d ", i);
> >         |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> >   xdp_hw_metadata.c:766:47: error: ‘%d’ directive output may be truncated
> >writing between 1 and 10 bytes into a region of size 6 [-Werror=format-
> >truncation=]
> >     766 |                 snprintf(buf, sizeof(buf), "1@%d ", i);
> >         |                                               ^~
> >   xdp_hw_metadata.c:766:44: note: directive argument in the range [0,
> >2147483646]
> >     766 |                 snprintf(buf, sizeof(buf), "1@%d ", i);
> >         |                                            ^~~~~~~
> >   xdp_hw_metadata.c:766:17: note: ‘snprintf’ output between 5 and 14 bytes into
> >a destination of size 8
> >     766 |                 snprintf(buf, sizeof(buf), "1@%d ", i);
> >         |                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> 
> Thanks for pointing this out.
> Btw, do you know which build command will trigger these errors?
> I am using "make -C tools/testing/selftests/bpf" but cannot
> reproduce the build error.
> 
> Thanks & Regards
> Siang

Last time I used the following to reproduce similar issues on my side:

make -C tools/testing/selftests TARGETS="bpf" LLVM=1 USERCFLAGS="-Wformat-truncation"

You can also try to use something like asprintf instead of managing the buffer
sizes manually.
