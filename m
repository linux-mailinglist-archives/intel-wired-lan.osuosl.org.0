Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A32B75262C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 13 Jul 2023 17:08:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 313B7613E2;
	Thu, 13 Jul 2023 15:08:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 313B7613E2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689260923;
	bh=UnpA02Igl0wb10kvJTCb28g8aP7hk4BBK0k1MjhM0hU=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=L+EW8i70xDKOXt54Hlw0rEtUpCmGo5oQXofZR5soP3zFiCgQVN0wR1/Dyn5/UPjAr
	 i+4mAIaFwMNVdx9OVyagzfLGLDa8DbUG+zpAKGV7+skcTEgzEdw57F97Y04YaK/zJ6
	 CiZ3neVSXNdq/oWveyG5/xGtcVbIk3PxiJ2f8f7E9qjpmBfEb9f+Zze32SxkuQIBe9
	 JWBYkrlufH3L5Ghi63HrGliqbKOfVl14Hv9MzStdkbvSe7hyKcuQYbqwW3++nfPKjO
	 dkZ6YiKPffqJ96qfcxMPJWDj/B9M8ecNhOZQXq39IGddJgwskeSpBWRfLpaC+MaCh9
	 JDWp+qBp8cHCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JazG48AIdAs5; Thu, 13 Jul 2023 15:08:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 24DD6613D1;
	Thu, 13 Jul 2023 15:08:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24DD6613D1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC8241BF3DC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 05:34:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A033F41D61
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 05:34:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A033F41D61
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KczwdVGQqS8b for <intel-wired-lan@lists.osuosl.org>;
 Thu, 13 Jul 2023 05:34:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 62DAE41C26
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 62DAE41C26
 for <intel-wired-lan@lists.osuosl.org>; Thu, 13 Jul 2023 05:34:16 +0000 (UTC)
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-158-GMyM6MhvP8uJAg1qpMXxhA-1; Thu, 13 Jul 2023 01:34:12 -0400
X-MC-Unique: GMyM6MhvP8uJAg1qpMXxhA-1
Received: by mail-wr1-f70.google.com with SMTP id
 ffacd0b85a97d-3141c6f4173so262180f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 22:34:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689226451; x=1691818451;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=SmfB+i5ITyD8VcQT6H0n4jQbBtZaHz3osNrT9kioxiQ=;
 b=cc8wqYrcLNYzj288Mz7ax89UMY4gXkDOO3QlzToc8/t6D59y4IBw8fqVayE+2BDn47
 eYLv5qpfA1D4cY2TDU1YfxMX4dc2cST5APQHg2tAShM9TQ3CXA8bBX8ebbHE9dI19RzL
 KyX0rOMNpKhCeJVW1omvaI8lZhssAqDCXrpBqepylR4ns8KD3gJLA48JhpRDQrrggEru
 lzqF7P95LUtFiabIfWtlL2jBpuW5Ah9EH+nc/oP489NWQkmcNu9JfzIo8I53TYzoGXj3
 FiDERdm50fEXCsug2L9Xm2/cjzhMRDcLanviRwe2+mpg7/bn+BTmlGNiW5Fy1fvkTbyp
 B8QQ==
X-Gm-Message-State: ABy/qLZTCp/VR5BvSv2/XBQyQVIJoS2xyMCSN8dubVq2fA17zkSbrP+u
 0Xg1rUkY3GTZqZAgnFhlY9AqnvhmfDVOo3qXzIW6jNhEOAJtERHdEN6KG10t5InDv17+r0SXHXR
 OMsYEg/1iA+D2obBTn1oKC19IlgEMkgQvj3VKZxluQmDmeg==
X-Received: by 2002:a05:6000:92:b0:314:35c2:c4aa with SMTP id
 m18-20020a056000009200b0031435c2c4aamr467041wrx.8.1689226450861; 
 Wed, 12 Jul 2023 22:34:10 -0700 (PDT)
X-Google-Smtp-Source: APBJJlGOJnBSbefoa2jYNguz42ZsRuZYJIodpjHhXJuzkLT9wNSNcgOUvRAkGCM4TmbRTEw+GkFxz47vkJZ0YZi65gI=
X-Received: by 2002:a05:6000:92:b0:314:35c2:c4aa with SMTP id
 m18-20020a056000009200b0031435c2c4aamr466974wrx.8.1689226450472; Wed, 12 Jul
 2023 22:34:10 -0700 (PDT)
MIME-Version: 1.0
From: Vitaly Grinberg <vgrinber@redhat.com>
Date: Thu, 13 Jul 2023 08:33:59 +0300
Message-ID: <CACLnSDiMD+BH_BBHQUAhSvfqe6jhnm4MOB2N_hog4VMhvdTYVg@mail.gmail.com>
To: Jiri Pirko <jiri@resnulli.us>
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Thu, 13 Jul 2023 15:08:24 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1689226455;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=SmfB+i5ITyD8VcQT6H0n4jQbBtZaHz3osNrT9kioxiQ=;
 b=OoIWNw1nNb/oRFWpbrYaF4F13T+Rm2lhoZyalb1Kwq0YfTOtmDwdUgv2s+8rs8TVb0tAPY
 sFjfYFobLyXd0aVPJp9u0AEXBvac0mO1QEEfgu9d+AoXuWVWImHrV6F2NEW13di3QsQlcM
 C9GgWJK9HrUI0BY5GQxi4+dczyww9b8=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=OoIWNw1n
Subject: Re: [Intel-wired-lan] [RFC PATCH v9 00/10] Create common DPLL
 configuration API
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
Cc: geert+renesas@glider.be, linux-doc@vger.kernel.org, razor@blackwall.org,
 phil@nwl.cc, jesse.brandeburg@intel.com, edumazet@google.com,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, linux-clk@vger.kernel.org, lucien.xin@gmail.com,
 leon@kernel.org, corbet@lwn.net, linux-rdma@vger.kernel.org,
 masahiroy@kernel.org, Michael Tsirkin <mst@redhat.com>,
 Javier Martinez Canillas <javierm@redhat.com>, vadfed@meta.com,
 intel-wired-lan@lists.osuosl.org, kuba@kernel.org, vadfed@fb.com,
 Paolo Abeni <pabeni@redhat.com>, ricardo.canuelo@collabora.com, arnd@arndb.de,
 idosch@nvidia.com, richardcochran@gmail.com, claudiajkang@gmail.com,
 kuniyu@amazon.com, jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com,
 David Airlie <airlied@redhat.com>, nicolas.dichtel@6wind.com,
 linux-arm-kernel@lists.infradead.org, axboe@kernel.dk, sj@kernel.org,
 vadim.fedorenko@linux.dev, linux@zary.sk, gregkh@linuxfoundation.org,
 ogabbay@kernel.org, nipun.gupta@amd.com, linux-kernel@vger.kernel.org,
 andy.ren@getcruise.com, tzimmermann@suse.de, jonathan.lemon@gmail.com,
 saeedm@nvidia.com, davem@davemloft.net, milena.olech@intel.com,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,
I'd like to clarify about the DPLL phase offset requirement. We can
live without it during the initial submission. The addition of phase
offset can be an increment to patch v10.
Thanks,
Vitaly

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
