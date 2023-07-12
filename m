Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F6D750C48
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jul 2023 17:20:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 971A4611FD;
	Wed, 12 Jul 2023 15:20:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 971A4611FD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689175213;
	bh=UnpA02Igl0wb10kvJTCb28g8aP7hk4BBK0k1MjhM0hU=;
	h=From:Date:To:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=zearHNVdHfLmqTeJP7EGECxhkZvM+YIEroe4Y2vVG8ypd77bsar0P+sRDU/DzhGHC
	 Tg+UICMI3MaalUr5QRbyGZV7coTrXj/MHCAJH0sD6L081bdPXYHrHpyMMuJpjVC/Au
	 bvrQ368nSgxAmvsyu9RaFrGHjYkQzGAPl7lix4cj0MALmcp+vhPljyfqEFop8rm0W+
	 U6806jeBkZBt233bjuiCb29tiFKfBdlI0KlqUeU+JzIbOK3RwirN2FPkkFGQHY4SEF
	 WP0TcecQRs/IQz7rRCJziqFpiCt7rkqx+bug8f9aUb8/LlE1oJzgvlDbY0glncbQNp
	 Oifh9jDQNbSJg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BPNEeXoDE3N4; Wed, 12 Jul 2023 15:20:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 78DAA611A7;
	Wed, 12 Jul 2023 15:20:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 78DAA611A7
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7E2481BF407
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 14:29:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 52FF181F39
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 14:29:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 52FF181F39
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nZHH2b3rH0SE for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jul 2023 14:29:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 993D981F23
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 993D981F23
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 14:29:26 +0000 (UTC)
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-370-ANkJZqU1Mv-pQHBAk-70hQ-1; Wed, 12 Jul 2023 10:29:24 -0400
X-MC-Unique: ANkJZqU1Mv-pQHBAk-70hQ-1
Received: by mail-wr1-f71.google.com with SMTP id
 ffacd0b85a97d-31596170243so2752606f8f.1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jul 2023 07:29:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1689172163; x=1691764163;
 h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
 :from:to:cc:subject:date:message-id:reply-to;
 bh=SmfB+i5ITyD8VcQT6H0n4jQbBtZaHz3osNrT9kioxiQ=;
 b=XkjIyQP2m2pswntyw6p9xkqH+4benc2Z5M3mHCrCABn74t6q7rCRX37+KIR5jgguXj
 MpGl+dO5PRm38ky9UFXhHdZlXw6WJoKw1I2NFX1H2vbQGDek99dlZIh8PMIOUVRr5+cM
 7xb97FekTaz+kdHPiRF1wXB3v7uPQZmdW6XJmxa4MnZkE77WM5bdUiI266l6acckQ9hW
 MoMQwNOgwzcqaChX/W6yZ/E/nPI+R4xPuoa5NXD27dS7pX/LTsqKmJwbpiQ8maxi/YhS
 YaB1bys1bJUPsoZzoMfcrwQhaak/1464S/C6zn37F0VSLUVK5jMJWA40ccFGIOWbxmN7
 t4dg==
X-Gm-Message-State: ABy/qLZ4hLR1Lxk7TgjH7JlgzkphM7SoNv2p5R7h1FW710sEWSRcpbAQ
 SYvKdqQg8BiC0c+niMMDru26VQdL1hCnrritGeAbD3UhI7ZPOaQ+Vze18VTn2rggwjd0orMlyJP
 7S2Vkdq/T9Heau91Dq1Usnz9P/tXZTopQefg42Yt5ipBkLg==
X-Received: by 2002:adf:ec8e:0:b0:314:1ebc:6e19 with SMTP id
 z14-20020adfec8e000000b003141ebc6e19mr17387207wrn.64.1689172163289; 
 Wed, 12 Jul 2023 07:29:23 -0700 (PDT)
X-Google-Smtp-Source: APBJJlGrLy4XTfg4SYrDedL3LjN5ZHr+LA3Ut1XmsVNXLi1zBJheiu9Ajx5OzglpHTo4/1SshVrdO+NlkBUDSAisljg=
X-Received: by 2002:adf:ec8e:0:b0:314:1ebc:6e19 with SMTP id
 z14-20020adfec8e000000b003141ebc6e19mr17387145wrn.64.1689172162850; Wed, 12
 Jul 2023 07:29:22 -0700 (PDT)
MIME-Version: 1.0
From: Vitaly Grinberg <vgrinber@redhat.com>
Date: Wed, 12 Jul 2023 17:29:12 +0300
Message-ID: <CACLnSDhA1io1tU0rVvuz6KYx3-c_4zEniLEs3KFUqsvLWATYWw@mail.gmail.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
X-Mimecast-Spam-Score: 1
X-Mimecast-Originator: redhat.com
X-Mailman-Approved-At: Wed, 12 Jul 2023 15:19:58 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1689172165;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=SmfB+i5ITyD8VcQT6H0n4jQbBtZaHz3osNrT9kioxiQ=;
 b=UuFg+m2Yvq/cYBpAgRMODwJ54BqHfYqmezUXh1VJIWgEP0vfhBG1M0pRo81QTilsuArSDw
 W8mdLhVObMlcS1VxSYDBJ10HohWfUJe/NMmNu1iW/HDvI1ejebyhz+z5LaQc6zKYXbXzu/
 HLk7qiwAh7we4NiMCwkxNA8KUHsO9n0=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com
 header.a=rsa-sha256 header.s=mimecast20190719 header.b=UuFg+m2Y
Subject: Re: [Intel-wired-lan] [RFC PATCH v9 08/10] ice: implement dpll
 interface to control cgu
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
 Paolo Abeni <pabeni@redhat.com>, ricardo.canuelo@collabora.com,
 Jiri Pirko <jiri@resnulli.us>, arnd@arndb.de, idosch@nvidia.com,
 richardcochran@gmail.com, claudiajkang@gmail.com, kuniyu@amazon.com,
 jacek.lawrynowicz@linux.intel.com, liuhangbin@gmail.com,
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
