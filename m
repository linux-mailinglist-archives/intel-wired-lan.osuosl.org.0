Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9232CEDF1
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 13:19:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5C62087923;
	Fri,  4 Dec 2020 12:19:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vwnv5dsQIo-w; Fri,  4 Dec 2020 12:19:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B31E487926;
	Fri,  4 Dec 2020 12:19:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6841F1BF86D
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 12:19:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 629F68784E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 12:19:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FMzONiFiQcUi for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 12:19:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B043C87736
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 12:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607084379;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=R4OGEJo66P6rsNAhT6jP92o68BJnxBUwibF+4bWbC2k=;
 b=R2IMc6Nl37zQf80+xuT2x4HMTBeSmMNRuNeN46eKD8GGfIfJPzunLbnnlPdmzz/yv9z04v
 MqvsdoAkc5JkKswxdLvB/g8kf7xgwqOruLgSsMoF6sV1LDQrZhvHhzSQzTJ6W8gtpBu5H+
 NVzfrGklRHfmdqEOPdjxO1ATlQbuNiw=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-96-Iu1x_hzUOXO0fME3nd4IbA-1; Fri, 04 Dec 2020 07:19:38 -0500
X-MC-Unique: Iu1x_hzUOXO0fME3nd4IbA-1
Received: by mail-ej1-f69.google.com with SMTP id 3so1293959ejw.13
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 04:19:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=R4OGEJo66P6rsNAhT6jP92o68BJnxBUwibF+4bWbC2k=;
 b=nROKk4lmHUQeNlQSj3gSWIIkdNde/lMdMWj/+20aRsatoAiFIsbPcGw6IxEpFEbls3
 zGD2NO69rcy4n1vYp0TNb1Iue0ER09m6hoC9eAWE3VfBC1p2GwFU6+yTGyBDkkFPxGvp
 5TeAE+s1ZwxLywwVQsE3p8NOPM8dFcYrMCM790gH2NYvaM0h1haMprgsnh8Dwb3olBmX
 rWwyGCfuTyCzNAr2ZjjOlG59yhIL11yUoMx+kCGUiKw3Z+0JPZPqWFrA5uvRyhbA+oAR
 OogO3dJQyDjZGfl0D2Fze6PBbr5phpaotWgGOdSOi1QcCvgzCafTYLdNVFDLZHSL6KlQ
 rWYQ==
X-Gm-Message-State: AOAM530SLw/TacRtk5FKJfJUCctUE61EybyMzFvOi66LWuWyBn6KBXTc
 nJGAbdMsIK6FnHHKPBARKh1zuWEi8B9LBRSU2dubtP9kG4G4wbx3gqelqmf4i+5UUoPlOFCHE2I
 tgNVbA/NnJ7ZzxhBssvgLipYk+dvuHQ==
X-Received: by 2002:a17:906:660b:: with SMTP id
 b11mr6819056ejp.190.1607084373992; 
 Fri, 04 Dec 2020 04:19:33 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzHftUesGbbLZt8khqeFgqcDmh06X5sj1NJhXevWW4Jj6/igg4fia1bqWrg5ljp1M1eXKTFOw==
X-Received: by 2002:a17:906:660b:: with SMTP id
 b11mr6819030ejp.190.1607084373603; 
 Fri, 04 Dec 2020 04:19:33 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id e27sm3007351ejm.60.2020.12.04.04.19.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Dec 2020 04:19:32 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 91941182EEA; Fri,  4 Dec 2020 13:19:32 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: alardam@gmail.com, magnus.karlsson@intel.com, bjorn.topel@intel.com,
 andrii.nakryiko@gmail.com, kuba@kernel.org, ast@kernel.org,
 daniel@iogearbox.net, netdev@vger.kernel.org, davem@davemloft.net,
 john.fastabend@gmail.com, hawk@kernel.org
In-Reply-To: <20201204102901.109709-3-marekx.majtyka@intel.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204102901.109709-3-marekx.majtyka@intel.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 04 Dec 2020 13:19:32 +0100
Message-ID: <875z5h931n.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf 2/5] drivers/net: turn XDP
 properties on
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
Cc: maciejromanfijalkowski@gmail.com, Marek Majtyka <marekx.majtyka@intel.com>,
 intel-wired-lan@lists.osuosl.org, jonathan.lemon@gmail.com,
 bpf@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

alardam@gmail.com writes:

> From: Marek Majtyka <marekx.majtyka@intel.com>
>
> Turn 'hw-offload' property flag on for:
>  - netronome.

Can you add this to netdevsim as well, please? That way we can add a
test for it in test_offload.py once the userspace bits land in
ethtool...

-Toke

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
