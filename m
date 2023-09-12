Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 477DF79CC84
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 11:56:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C78F761135;
	Tue, 12 Sep 2023 09:56:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C78F761135
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694512588;
	bh=CmwqzFa2ZveIK6lNc/jCplC3bhFkHMpmGX0HUd8DMUk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=XgP3ijRPWPtl7Jcriyjs5ckzER3JxPK5lZQBHHpzQMOgGkOpKNNMm2j02m8Bua0hv
	 YzSTAHolpDFWP+Z5tvtaL3E3FPe2T4Mub6oDdsdf+D4TyEDBitIcMQOzoujmyv///u
	 d+bFekpO3Vj0yvqo14Q+JWpaOLUhRp7emacu/uCIsphIgFUCwzVF3ERvHT2seaIgBD
	 QTDn7OTRAKT5F/88G2KSYcPUiEGm5CRX6Ez9JQARY0VH7fZ+k81teSt69ag+n16pGw
	 LwC22BelTQoJ7Fm4Fml8i9a9NiK/HMz3ofHou0jiNWLRHoIsKwTIpnobHtOlVXCGeb
	 PP5ZNpJktd7jA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JWMuSI3DQW6m; Tue, 12 Sep 2023 09:56:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5E8360692;
	Tue, 12 Sep 2023 09:56:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5E8360692
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 540531BF3BE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 09:56:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2BD934038B
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 09:56:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2BD934038B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ugYn3q_JZuXn for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 09:56:21 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 611F5401CA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 09:56:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 611F5401CA
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-191-bYaZUqB8NwKeh_RMwC8Oxw-1; Tue, 12 Sep 2023 05:56:18 -0400
X-MC-Unique: bYaZUqB8NwKeh_RMwC8Oxw-1
Received: by mail-ed1-f72.google.com with SMTP id
 4fb4d7f45d1cf-52a59eb87fcso1062300a12.0
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 02:56:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1694512577; x=1695117377;
 h=mime-version:user-agent:content-transfer-encoding:references
 :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=qwbY5T4S7HVWeFjupYj7Meyn2zny3d5w0hwW7I2C90g=;
 b=d9ntuGXFuTttuQDXf64Z3qNA17fhAi3oaIZ4CeA2K0NeL+iN+Jz9CDcPtwdQFgz84K
 dyEwyLighNPDlyzPIe92c5C9DRT7DWtL34z4LK0D45OC1g9IfDBy2GAVM68+oFBvRIYT
 c5arBoArlkXPB8Xd9Ypknf/vCkm8HOv8tBb+9dnvGZwF3k6DbiGrHHUP+t+uswdT3WRb
 v6cNH+ptCJNkWPS4Ky89BeSR5mkf+CSKhWTUVC8zJY3SUnmlhZiDVPxg7zP0m29JPh6a
 6+07P4hvWPM6TKuAl1s5qPpRfAVJ6/Zdo25YuO5KO4J4Jqvwe9/KxP6B12n1eqYt1rp1
 EQhg==
X-Gm-Message-State: AOJu0YwWHzYutm+viVGfHWaE0grRAgVUTzsisokrABi5r9LUzha4iYte
 Pn4dmfGubTYSz15qZiD3nh4Q3pf9pFvcP8zXPd4Cj4dxjPFPVj4XEtUmXszwI3YNf+BfkWt4xXU
 h8gQpqqZcfnNE0Nz/QekfQEnjcptX8g==
X-Received: by 2002:a05:6402:26cc:b0:514:ab8b:ee78 with SMTP id
 x12-20020a05640226cc00b00514ab8bee78mr10100852edd.3.1694512577547; 
 Tue, 12 Sep 2023 02:56:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHL6yEqSITkrMXY37tjjUVT9sr6X+90RRvmipG1uMwsARpI1raoLpntc8EIwiFYT+PS/8a0Qw==
X-Received: by 2002:a05:6402:26cc:b0:514:ab8b:ee78 with SMTP id
 x12-20020a05640226cc00b00514ab8bee78mr10100843edd.3.1694512577268; 
 Tue, 12 Sep 2023 02:56:17 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-249-231.dyn.eolo.it.
 [146.241.249.231]) by smtp.gmail.com with ESMTPSA id
 l9-20020aa7c309000000b0052a19a75372sm5664844edq.90.2023.09.12.02.56.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Sep 2023 02:56:16 -0700 (PDT)
Message-ID: <0168a988486f4bff08bd186d5aea1cfe4900a2c3.camel@redhat.com>
From: Paolo Abeni <pabeni@redhat.com>
To: Andrii Staikov <andrii.staikov@intel.com>, 
 intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Sep 2023 11:56:15 +0200
In-Reply-To: <20230912092952.2814966-1-andrii.staikov@intel.com>
References: <20230912092952.2814966-1-andrii.staikov@intel.com>
User-Agent: Evolution 3.46.4 (3.46.4-1.fc37)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1694512580;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qwbY5T4S7HVWeFjupYj7Meyn2zny3d5w0hwW7I2C90g=;
 b=bp3+SpM58/VXRXQY+ESGkZ6KCTAIVGA7fKYRZY4dLFFWhOOK7PE1dOKwwS0OJPBVUJBZut
 WjD/etp51BLYQAobFKHszCDdbvG06gKRhQUJmw/Pt0HR4RU9lEY0EgOH+kOw+O2Unj96Oo
 PpppFL3WET2AdiigNTiW0xyHhUSKR5o=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=bp3+SpM5
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: Add support for
 packet mirroring using hardware in switchdev mode
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi all,

On Tue, 2023-09-12 at 11:29 +0200, Andrii Staikov wrote:
> Switchdev mode allows to add mirroring rules to mirror
> incoming and outgoing packets to the interface's port
> representor. Previously, this was available only using
> software functionality. Add possibility to offload this
> functionality to the NIC hardware.
> 
> Introduce ICE_MIRROR_PACKET filter action to the
> ice_sw_fwd_act_type enum to identify the desired action
> and pass it to the hardware as well as the VSI to mirror.
> 
> Example of tc mirror command using hardware:
> tc filter add dev ens1f0np0 ingress protocol ip prio 1 flower
> src_mac b4:96:91:a5:c7:a7 skip_sw action mirred egress mirror dev eth1
> 
> ens1f0np0 - PF
> b4:96:91:a5:c7:a7 - source MAC address
> eth1 - PR of a VF to mirror to
> 
> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>

The amount of patches that IMHO should land only into intel-specific
MLs and instead reaches also netdev, recently increased.

Please try harder to apply proper constraints to your traffic, netdev
is already busy enough!

Thanks,

Paolo

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
