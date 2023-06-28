Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FD77414AD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 28 Jun 2023 17:15:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 57316402B3;
	Wed, 28 Jun 2023 15:15:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57316402B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687965302;
	bh=d0rVGxIlXxjfCdKer3SwswiNMhTjtHmzgTcuzJzJYP4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DyTBWyDXnpAjQcYKCb8/AMqXSCepuDhG7rziR8ADmeE78IkcHPHOpBLUYuotf6bJa
	 26lNoKmFEK8JE6SbI2zweXzPk3+IlS4Fp7T+QcCR3jv0UZz8cOxpdVxrTOFOU7y3s1
	 0ncQgDB2PB8kjafUJWfNsdjfyTDd47/Fzf3rQrrK7ufBRXaivqXJNLZg2CfgC8YeBM
	 7gEZ0DBSRnEoOSGPuTj/G9D6feh9ETqgLHhS7OIm+5PezH4YXEk7ceJ5dJZtLoFeXW
	 c+TDYNz0Abp2PtZAg+fcaKFBeTTTby7CmeHoMycpoTA64pHYIuvt+nuN9Z/gty5PIR
	 qLRp1hd3UK3Nw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3zfF62xLWjjD; Wed, 28 Jun 2023 15:15:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7F3AE408ED;
	Wed, 28 Jun 2023 15:14:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7F3AE408ED
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 20D4A1BF38D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 15:14:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 067DD4180F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 15:14:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 067DD4180F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id udVEo1YO29Kk for <intel-wired-lan@lists.osuosl.org>;
 Wed, 28 Jun 2023 15:14:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2705A400FE
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2705A400FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 15:14:53 +0000 (UTC)
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-574-YCYjZqe6MuWmN6cStn-1DA-1; Wed, 28 Jun 2023 11:14:50 -0400
X-MC-Unique: YCYjZqe6MuWmN6cStn-1DA-1
Received: by mail-qt1-f199.google.com with SMTP id
 d75a77b69052e-40320c2d93dso2024921cf.0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 28 Jun 2023 08:14:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687965289; x=1690557289;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=No+atwHziLwh2Mwoi0urFa3UAgrtvH7xWcC0P7lfeTw=;
 b=a3K9Wb7N+WAAVBoLKa59cdHkop3F/csWbigTYcKJGNpD8O6JNVOeAJ5XnvnosW1W21
 AINkWtLrOswbk4QtnhswSCbqN8G5AJd+0Ykmmi9zSx4ym+g6Ec08uyn9rHM7arBGmd8L
 uAMNUsXIdDmSbhCBr2+JNTtwvlPNS1z3VYJLjSBG3xqO7dSzYcyZaCZ3eLJggNqMaPbY
 j1HVwBC5+r357F1vPqdijLgGNnya7UUtB+/8MF2QQrtdy77ZcrIzVZXhUCoS3eTlkiNC
 jeLMBUSw9Ldcfh7rcdxc6I0s2EKMORo995uDEiYzjagkL5UpEwaxzH0VZkbOSQT9Yrfv
 Gu0g==
X-Gm-Message-State: AC+VfDzNYruXYKKPDHMQ0hrBuMZCdr5RTK40Nok1TUSL2W/9W/IK4yqE
 sIZip6fcqDMx/4OAbrcOYTELkeSx90fLUgK7ghTw1NklM9cVx25pfovoPqZ/LGR9xfbEMAtq/W2
 DlTsGcQtpEUTu5Y8wQf8zFy+Qp2ZWgQ==
X-Received: by 2002:a05:622a:1896:b0:3f6:a8e2:127b with SMTP id
 v22-20020a05622a189600b003f6a8e2127bmr46138qtc.5.1687965289134; 
 Wed, 28 Jun 2023 08:14:49 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5HF4kf3dF/wJd/JhG2BMQuizzHpnpWbJZjxT53l4SvDgK1eWSqKwllWtY5fNhmd2RvU2RI8g==
X-Received: by 2002:a05:622a:1896:b0:3f6:a8e2:127b with SMTP id
 v22-20020a05622a189600b003f6a8e2127bmr46114qtc.5.1687965288898; 
 Wed, 28 Jun 2023 08:14:48 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-226-127.dyn.eolo.it.
 [146.241.226.127]) by smtp.gmail.com with ESMTPSA id
 a3-20020a05622a02c300b00400e687174csm3560628qtx.54.2023.06.28.08.14.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Jun 2023 08:14:48 -0700 (PDT)
Message-ID: <5688456234f5d15ea9ca0f000350c28610ed2639.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Ian Kumlien <ian.kumlien@gmail.com>
Date: Wed, 28 Jun 2023 17:14:45 +0200
In-Reply-To: <CAA85sZs4KkfVojx=vxbDaWhWRpxiHc-RCc2OLD2c+VefRjpTfw@mail.gmail.com>
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
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1687965292;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=No+atwHziLwh2Mwoi0urFa3UAgrtvH7xWcC0P7lfeTw=;
 b=JBeLERylEkGUhrOvdg9oN5+CDTM7/LG2PviP189y5DDEPmW6HW8eRlxGPU80zaHb4TKo22
 H011XVGfMhjiJuoU7tPP6zm8D7C5vVfMcn1V/gBZgJKUjaX4bwjBgeKGRoy/qW6ejvyA/i
 KVHuNZgZ7u4vfRNzOefcq0sqDWxjk2c=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=JBeLERyl
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

On Wed, 2023-06-28 at 14:04 +0200, Ian Kumlien wrote:
> So have some hits, would it be better without your warn on? ... Things
> are a bit slow atm - lets just say that i noticed the stacktraces
> because a stream stuttered =)

Sorry, I screwed-up completely a newly added check.

If you have Kasan enabled you can simply and more safely remove my 2nd
patch. Kasan should be able to catch all the out-of-buffer scenarios
such checks were intended to prevent.

Cheers,

Paolo

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
