Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C17B7471D4
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jul 2023 14:55:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0D2694092D;
	Tue,  4 Jul 2023 12:54:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D2694092D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688475299;
	bh=o5gmJ/WEMTUA9C0YKZUWkTFe8ac9oDUYTV+OtUBRCY8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4eiNDPB9VVy7ohSxazwiCKWZ7vfeGSmMTWhaTXVguXpy8HMv37I3zMnsMqZ5Uyat9
	 oFh7ctBx/YKHkfbbgjiy9OZv2Y6k2GIKOqm8iJtHrM9Ur2PA46udeL3V/9ZE7NKRNV
	 DPBXpo08JWd6vplrMzN0DkH4RC4eUJpQ+cTJvPULOxVpp/4e2JngeinXzbcJVY44IP
	 dnZgI+g0MPf5bZdTwKmMfN188oQjS0Xgpj7m6Zbm5ioICzMW5Fab9rMBospWGffg5r
	 xryM1D2076bK77J6RilekEOp2Obs5dUWGIfitKE8N2cavwzsOAN68naCyw8X6Ik546
	 rw9Gyl9K6XiMg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5XfFjebxB2SC; Tue,  4 Jul 2023 12:54:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C383C40223;
	Tue,  4 Jul 2023 12:54:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C383C40223
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5AEDC1BF861
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 12:54:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3260581B10
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 12:54:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3260581B10
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8hxF9DM5xt6U for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jul 2023 12:54:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E5B381A58
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E5B381A58
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jul 2023 12:54:51 +0000 (UTC)
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-593-bEnz7xmRPCWh0i8yAl_j-Q-1; Tue, 04 Jul 2023 08:54:48 -0400
X-MC-Unique: bEnz7xmRPCWh0i8yAl_j-Q-1
Received: by mail-qk1-f200.google.com with SMTP id
 af79cd13be357-76714d4beebso102070085a.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 04 Jul 2023 05:54:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1688475286; x=1691067286;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ioWPxV9zU1HRZRvRW9KpWYEne0dVnA+bJiiYdIxAOPo=;
 b=WnTmi7ONpe2ndPFaIvN0qzar9kdvYxL8wn1ZLMtNE9oNW/jGFxLPeyB1ant5BxgCXd
 U0yJJfaamjXAy9w9aRSRBtusx0VcAtou6Tvb02joLM9QKP4fVCQYEkUSM3lSiLYeOQg8
 pyb4QHUKJuu+DQOj94oTDGeJQCbmDuhnOd3T39WA76wG4nzoJr8/NSkwZz75tGdr7LEZ
 qRIm8Ee+xrbOYBOSPNeA5f2aOkNGS6ui+OOUD+02+Pn5Pttw7ckmOq/uNtqUY7mI2o77
 bjArg8pm/ZDMMaBGz9g2VuvrX4uX8GLxyTTP404sPClKyrRk74LhLmfHl/T5HYuxwhl+
 zL2g==
X-Gm-Message-State: ABy/qLZsTkxHRpRkEXmceYnwXs6UknAP8G/ajdDsJ4L2FQJMqZ/3rAjU
 2utufJt2V9Q2p0CDOGyyg4e8rTrvqz9IleqTdCSO8rb4omHKx00CT2zXqXWTf4P+h9dB9miU29l
 UNI2sVVFqjphJ/FEhS/yRNFzKGMFHbg==
X-Received: by 2002:a05:6214:4018:b0:635:ec47:bfa4 with SMTP id
 kd24-20020a056214401800b00635ec47bfa4mr15158357qvb.4.1688475286697; 
 Tue, 04 Jul 2023 05:54:46 -0700 (PDT)
X-Google-Smtp-Source: APBJJlGff3DAVP8rxsCeJdiqdZJEJR0lTXhvEtMOgiBPMRGFUQp2BEEn7tqiM1upp5A0yfH5+B3Pfw==
X-Received: by 2002:a05:6214:4018:b0:635:ec47:bfa4 with SMTP id
 kd24-20020a056214401800b00635ec47bfa4mr15158343qvb.4.1688475286407; 
 Tue, 04 Jul 2023 05:54:46 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-247-156.dyn.eolo.it.
 [146.241.247.156]) by smtp.gmail.com with ESMTPSA id
 z18-20020a0ce992000000b006365b23b5dfsm4989364qvn.23.2023.07.04.05.54.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Jul 2023 05:54:45 -0700 (PDT)
Message-ID: <dfbbe91a9c0abe8aba2c00afd3b7f7d6af801d8e.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Ian Kumlien <ian.kumlien@gmail.com>
Date: Tue, 04 Jul 2023 14:54:42 +0200
In-Reply-To: <CAA85sZvtspqfep+6rH8re98-A6rHNNWECvwqVaM=r=0NSSsGzA@mail.gmail.com>
References: <CAA85sZukiFq4A+b9+en_G85eVDNXMQsnGc4o-4NZ9SfWKqaULA@mail.gmail.com>
 <CAA85sZvm1dL3oGO85k4R+TaqBiJsggUTpZmGpH1+dqdC+U_s1w@mail.gmail.com>
 <e7e49ed5-09e2-da48-002d-c7eccc9f9451@intel.com>
 <CAA85sZtyM+X_oHcpOBNSgF=kmB6k32bpB8FCJN5cVE14YCba+A@mail.gmail.com>
 <22aad588-47d6-6441-45b2-0e685ed84c8d@intel.com>
 <CAA85sZti1=ET=Tc3MoqCX0FqthHLf6MSxGNAhJUNiMms1TfoKA@mail.gmail.com>
 <CAA85sZvn04k7=oiTQ=4_C8x7pNEXRWzeEStcaXvi3v63ah7OUQ@mail.gmail.com>
 <ffb554bfa4739381d928406ad24697a4dbbbe4a2.camel@redhat.com>
 <CAA85sZunA=tf0FgLH=MNVYq3Edewb1j58oBAoXE1Tyuy3GJObg@mail.gmail.com>
 <CAA85sZsH1tMwLtL=VDa5=GBdVNWgifvhK+eG-hQg69PeSxBWkg@mail.gmail.com>
 <CAA85sZu=CzJx9QD87-vehOStzO9qHUSWk6DXZg3TzJeqOV5-aw@mail.gmail.com>
 <0a040331995c072c56fce58794848f5e9853c44f.camel@redhat.com>
 <CAA85sZuuwxtAQcMe3LHpFVeF7y-bVoHtO1nukAa2+NyJw3zcyg@mail.gmail.com>
 <CAA85sZurk7-_0XGmoCEM93vu3vbqRgPTH4QVymPR5BeeFw6iFg@mail.gmail.com>
 <486ae2687cd2e2624c0db1ea1f3d6ca36db15411.camel@redhat.com>
 <CAA85sZsJEZK0g0fGfH+toiHm_o4pdN+Wo0Wq9fgsUjHXGxgxQA@mail.gmail.com>
 <CAA85sZs4KkfVojx=vxbDaWhWRpxiHc-RCc2OLD2c+VefRjpTfw@mail.gmail.com>
 <5688456234f5d15ea9ca0f000350c28610ed2639.camel@redhat.com>
 <CAA85sZvT-vAHQooy8+i0-bTxgv4JjkqMorLL1HjkXK6XDKX41w@mail.gmail.com>
 <CAA85sZs2biYueZsbDqdrMyYfaqH6hnSMpymgbsk=b3W1B7TNRA@mail.gmail.com>
 <CAA85sZs_H3Dc-mYnj8J5VBEwUJwbHUupP+U-4eG20nfAHBtv4w@mail.gmail.com>
 <92a4d42491a2c219192ae86fa04b579ea3676d8c.camel@redhat.com>
 <CAA85sZvtspqfep+6rH8re98-A6rHNNWECvwqVaM=r=0NSSsGzA@mail.gmail.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1688475290;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ioWPxV9zU1HRZRvRW9KpWYEne0dVnA+bJiiYdIxAOPo=;
 b=TRqJA+PoovPzLrQspKOWYE5BfEZmGQaTpFMyqwoiC1U4Wgnbfcugz8PWXyWB7F2tXTWKwB
 JazqJVI7tjkKD42BDbQleak2+8c0IupQDqKvQJrFHatk5z7sPruumcd1nB4BGjjt/AxklM
 8UeTYov3G94I0B15Pn7w98xRqo8+yIU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=TRqJA+Po
Subject: Re: [Intel-wired-lan] bug with rx-udp-gro-forwarding offloading?
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eric Dumazet <edumazet@google.com>,
 intel-wired-lan <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, 2023-07-04 at 13:36 +0200, Ian Kumlien wrote:
> Propper bug this time:
> cat bug.txt | ./scripts/decode_stacktrace.sh vmlinux

To be sure, is this with the last patch I shared? this one I mean:

https://lore.kernel.org/netdev/92a4d42491a2c219192ae86fa04b579ea3676d8c.camel@redhat.com/

Could you please additionally enable CONFIG_DEBUG_NET in your build?

Could you please give a detailed description of your network topology
and the running traffic?

Thanks!

Paolo

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
