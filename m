Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C989B2CF319
	for <lists+intel-wired-lan@lfdr.de>; Fri,  4 Dec 2020 18:26:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F7E28748B;
	Fri,  4 Dec 2020 17:26:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sJTwaZoOdOWv; Fri,  4 Dec 2020 17:26:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A4CB5870E5;
	Fri,  4 Dec 2020 17:26:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EDEAA1BF2F8
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 17:26:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id E92F687CC2
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 17:26:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zAsUMaY8IJHw for <intel-wired-lan@lists.osuosl.org>;
 Fri,  4 Dec 2020 17:26:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 460F687CB7
 for <intel-wired-lan@lists.osuosl.org>; Fri,  4 Dec 2020 17:26:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1607102778;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=NQ798MNDfvtqQrDv2UBWcc2VnF0HXJeCo5mjae/HrWs=;
 b=SdSpPRcd7XHfWvWMPwEIciO1TUE8LXteGKtK2Eu3rQf85enZmGDlaELfllooRhJ5VrJTWE
 F99tg+KoH4GlLTDw5vKkfr61AhmCPOwIRm5AnO3PT4pZrLayHyjLdrQPVMIMQNiqPdtIk3
 HLXoguAcPdCmmfnhoJIiW3zlPArWEzI=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-132-YHzePPZzP12qWTHXTAcF9A-1; Fri, 04 Dec 2020 12:26:13 -0500
X-MC-Unique: YHzePPZzP12qWTHXTAcF9A-1
Received: by mail-ed1-f72.google.com with SMTP id d12so275468edx.23
 for <intel-wired-lan@lists.osuosl.org>; Fri, 04 Dec 2020 09:26:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=NQ798MNDfvtqQrDv2UBWcc2VnF0HXJeCo5mjae/HrWs=;
 b=bHysAUOb32xGTvg9l2rVSdausv+9Ga/5NCzGCn7gBtD7gDZOdWB7RGpWaoFF5qqIHk
 Qoeu53NfIJ4BUSJMLTVkrNkRHK/z9mYdoeuzz+zqxXOr9ck674vIM8/DpPY7CIT0PVJY
 PKtR+q/Gt+buLev63NvVWLUge1U4T3Vo9WmiFo+hq5fxAxjuAfLW1urf0C6mhtBaS1RU
 CA48n329J59MAtvMOqws9gk5IUa+UWsTb6YYX/pK3fXH7/IK83OujRs3p82ZFlN+n94o
 g1hJtwvq9S5c6/vLgJNsZPBsyQ8ZdzDoNSRsZMXTPiUjVpkyBzsUCO8GbMPUA9FBc/YR
 JTpg==
X-Gm-Message-State: AOAM530JE8RjOL45tTjLbi8UpkCKURtiUaSiPHO79AtaAJehr8QwJ2pW
 /bLyYqHQDXIcM4ZZytXgZDNOz2NoWbxHoIyqHkgfKAU8NBEkJJUd1XjEsC/jcqUkpyrhzhePZM9
 gyIe5mVg4/KGpHuHiKmSqDHJf7dUG8w==
X-Received: by 2002:a17:907:700c:: with SMTP id
 wr12mr7944110ejb.398.1607102772067; 
 Fri, 04 Dec 2020 09:26:12 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxfRey5xD/WZwhxd3Nz82+uyMq/nlfkZPaMg0SBTagSfHMxSO6JURM+9isThgDkn3lIA72mTw==
X-Received: by 2002:a17:907:700c:: with SMTP id
 wr12mr7944088ejb.398.1607102771880; 
 Fri, 04 Dec 2020 09:26:11 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
 by smtp.gmail.com with ESMTPSA id ch30sm3854443edb.8.2020.12.04.09.26.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Dec 2020 09:26:11 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id EF454182EEA; Fri,  4 Dec 2020 18:26:10 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>, alardam@gmail.com
In-Reply-To: <20201204092012.720b53bf@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
References: <20201204102901.109709-1-marekx.majtyka@intel.com>
 <20201204092012.720b53bf@kicinski-fedora-pc1c0hjn.DHCP.thefacebook.com>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Fri, 04 Dec 2020 18:26:10 +0100
Message-ID: <87k0tx7aa5.fsf@toke.dk>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=toke@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-wired-lan] [PATCH v2 bpf 0/5] New netdev feature flags
 for XDP
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
Cc: maciejromanfijalkowski@gmail.com, andrii.nakryiko@gmail.com,
 hawk@kernel.org, daniel@iogearbox.net, netdev@vger.kernel.org, ast@kernel.org,
 Marek Majtyka <marekx.majtyka@intel.com>, intel-wired-lan@lists.osuosl.org,
 jonathan.lemon@gmail.com, bpf@vger.kernel.org, bjorn.topel@intel.com,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Jakub Kicinski <kuba@kernel.org> writes:

> On Fri,  4 Dec 2020 11:28:56 +0100 alardam@gmail.com wrote:
>>  * Extend ethtool netlink interface in order to get access to the XDP
>>    bitmap (XDP_PROPERTIES_GET). [Toke]
>
> That's a good direction, but I don't see why XDP caps belong in ethtool
> at all? We use rtnetlink to manage the progs...

You normally use ethtool to get all the other features a device support,
don't you? And for XDP you even use it to configure the number of
TXQs.

I mean, it could be an rtnetlink interface as well, of course, but I
don't think it's completely weird if this goes into ethtool...

-Toke

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
