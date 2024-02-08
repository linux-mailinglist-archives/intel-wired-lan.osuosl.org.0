Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5972B84E4AB
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Feb 2024 17:06:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C4C336F7B4;
	Thu,  8 Feb 2024 16:06:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZcDloFWOjqCx; Thu,  8 Feb 2024 16:06:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D756E615F4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1707408394;
	bh=SAalLMEPsSD/09IiHiwS+PzKyKGItg6LwK/MHBE68Iw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=0MlrctjDfojs3ZBwhkoLskVHk/Jpd5ShoApwxg784/ykUpkRqtDZ+hZHuIahX3J03
	 Ms1UtioE+DtJWlKNppumoaSdvBPJ1y3aJNpyRsgOldeCRcyHtGfWYr8CH6Vwtk3MOH
	 QmHJzayF+bSIu/JE5djlP17TZTGFTXnDe+ITfg8Jn/dPraP/bt16tAiiRF/M3tUKsD
	 J7hf2i4poCeuzuPSbl17sAM8uruNXSu/UJVY62zItD3XxcDXkty0yPzIPAGW7ioJ3Y
	 TzpCU/eGjHSBgV9C7RWgvzrD8SFff+3unbOiIKQ57b9oL7IhlENUHLBq3a4uO+An8x
	 rxrblb/QhKB8Q==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D756E615F4;
	Thu,  8 Feb 2024 16:06:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 644ED1BF831
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 08:25:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4F514840D9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 08:25:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XvdA8tVVgZmg for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Feb 2024 08:25:08 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=170.10.129.124;
 helo=us-smtp-delivery-124.mimecast.com; envelope-from=ksundara@redhat.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 7343A840D1
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7343A840D1
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7343A840D1
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Feb 2024 08:25:08 +0000 (UTC)
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-5--56nbYMXOe67JYmp2I98qA-1; Thu,
 08 Feb 2024 03:25:05 -0500
X-MC-Unique: -56nbYMXOe67JYmp2I98qA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
 [10.11.54.5])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 81FAE38143B7;
 Thu,  8 Feb 2024 08:25:04 +0000 (UTC)
Received: from ksundara-mac.redhat.com (unknown [10.74.17.171])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 597301103A;
 Thu,  8 Feb 2024 08:24:58 +0000 (UTC)
From: Karthik Sundaravel <ksundara@redhat.com>
To: jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com,
 davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Thu,  8 Feb 2024 13:54:54 +0530
Message-Id: <20240208082455.66726-1-ksundara@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mailman-Approved-At: Thu, 08 Feb 2024 16:06:32 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1707380706;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding;
 bh=SAalLMEPsSD/09IiHiwS+PzKyKGItg6LwK/MHBE68Iw=;
 b=KZpihYXhCI2x3bGvObI44gJkgCqn7w+hZ96t0mFy3xBFY5xLMfL6z3ILh71mDmn160lOAV
 qEhoCOCzO7fNle41rPbYp7VGqDcTc5RM0sebdgtpQV1Pu0buu3i1pB70+nFUahndwIS5E5
 larvv2LqzFQDzBS5/4SbXyoDuvjb6Wg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=redhat.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=redhat.com header.i=@redhat.com header.a=rsa-sha256
 header.s=mimecast20190719 header.b=KZpihYXh
Subject: [Intel-wired-lan] [PATCH v2] ice: Add get/set hw address for VFs
 using devlink commands
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
Cc: pmenzel@molgen.mpg.de, aharivel@redhat.com, jiri@resnulli.us,
 cfontain@redhat.com, vchundur@redhat.com, ksundara@redhat.com,
 michal.swiatkowski@linux.intel.com, rjarry@redhat.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



Thanks for the review comments and suggestions.
In the V2 version of the patch, I have called ice_set_vf_mac() directly from the devlink port function handlers.

I did the following testing to verify the changes.

root@10:~# ethtool -i enp8s0f0np0 | grep bus
bus-info: 0000:08:00.0

root@10:~# devlink dev eswitch set pci/0000:08:00.0 mode switchdev
Warning: ice: Changed eswitch mode to switchdev.

root@10:~# echo 4 > /sys/class/net/enp8s0f0np0/device/sriov_numvfs 

root@10:~# devlink port show
pci/0000:08:00.0/0: type eth netdev enp8s0f0np0 flavour physical port 0 splittable true lanes 8
pci/0000:08:00.0/2: type eth netdev enp8s0f0npf0vf0 flavour pcivf controller 0 pfnum 0 vfnum 0 external false splittable false
  function:
    hw_addr 1a:33:f2:e7:64:d8
pci/0000:08:00.0/3: type eth netdev enp8s0f0npf0vf3 flavour pcivf controller 0 pfnum 0 vfnum 3 external false splittable false
  function:
    hw_addr 4e:ef:ca:9e:e7:5d
pci/0000:08:00.0/4: type eth netdev enp8s0f0npf0vf1 flavour pcivf controller 0 pfnum 0 vfnum 1 external false splittable false
  function:
    hw_addr 5a:f0:e3:f8:41:93
pci/0000:08:00.0/5: type eth netdev enp8s0f0npf0vf2 flavour pcivf controller 0 pfnum 0 vfnum 2 external false splittable false
  function:
    hw_addr 1a:62:c6:4b:d2:f0
pci/0000:08:00.1/0: type eth netdev enp8s0f1np1 flavour physical port 1 splittable false

root@10:~# devlink port function set  pci/0000:08:00.0/5 hw_addr 00:11:22:33:44:55

root@10:~# devlink port show
pci/0000:08:00.0/0: type eth netdev enp8s0f0np0 flavour physical port 0 splittable true lanes 8
pci/0000:08:00.0/2: type eth netdev enp8s0f0npf0vf0 flavour pcivf controller 0 pfnum 0 vfnum 0 external false splittable false
  function:
    hw_addr 1a:33:f2:e7:64:d8
pci/0000:08:00.0/3: type eth netdev enp8s0f0npf0vf3 flavour pcivf controller 0 pfnum 0 vfnum 3 external false splittable false
  function:
    hw_addr 4e:ef:ca:9e:e7:5d
pci/0000:08:00.0/4: type eth netdev enp8s0f0npf0vf1 flavour pcivf controller 0 pfnum 0 vfnum 1 external false splittable false
  function:
    hw_addr 5a:f0:e3:f8:41:93
pci/0000:08:00.0/5: type eth netdev enp8s0f0npf0vf2 flavour pcivf controller 0 pfnum 0 vfnum 2 external false splittable false
  function:
    hw_addr 00:11:22:33:44:55
pci/0000:08:00.1/0: type eth netdev enp8s0f1np1 flavour physical port 1 splittable false

root@10:~# ip link show enp8s0f0np0
12: enp8s0f0np0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP mode DEFAULT group default qlen 1000
    link/ether 40:a6:b7:18:dd:68 brd ff:ff:ff:ff:ff:ff
    vf 0     link/ether 1a:33:f2:e7:64:d8 brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state enable, trust off
    vf 1     link/ether 5a:f0:e3:f8:41:93 brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state enable, trust off
    vf 2     link/ether 00:11:22:33:44:55 brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state enable, trust off
    vf 3     link/ether 4e:ef:ca:9e:e7:5d brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state enable, trust off
    
root@10:~# ip link set dev enp8s0f0np0 vf 2 mac AA:BB:CC:DD:EE:FF

root@10:~# ip link show enp8s0f0np0
12: enp8s0f0np0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP mode DEFAULT group default qlen 1000
    link/ether 40:a6:b7:18:dd:68 brd ff:ff:ff:ff:ff:ff
    vf 0     link/ether 1a:33:f2:e7:64:d8 brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state enable, trust off
    vf 1     link/ether 5a:f0:e3:f8:41:93 brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state enable, trust off
    vf 2     link/ether aa:bb:cc:dd:ee:ff brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state enable, trust off
    vf 3     link/ether 4e:ef:ca:9e:e7:5d brd ff:ff:ff:ff:ff:ff, spoof checking on, link-state enable, trust off

root@10:~# devlink port show
pci/0000:08:00.0/0: type eth netdev enp8s0f0np0 flavour physical port 0 splittable true lanes 8
pci/0000:08:00.0/2: type eth netdev enp8s0f0npf0vf0 flavour pcivf controller 0 pfnum 0 vfnum 0 external false splittable false
  function:
    hw_addr 1a:33:f2:e7:64:d8
pci/0000:08:00.0/3: type eth netdev enp8s0f0npf0vf3 flavour pcivf controller 0 pfnum 0 vfnum 3 external false splittable false
  function:
    hw_addr 4e:ef:ca:9e:e7:5d
pci/0000:08:00.0/4: type eth netdev enp8s0f0npf0vf1 flavour pcivf controller 0 pfnum 0 vfnum 1 external false splittable false
  function:
    hw_addr 5a:f0:e3:f8:41:93
pci/0000:08:00.0/5: type eth netdev enp8s0f0npf0vf2 flavour pcivf controller 0 pfnum 0 vfnum 2 external false splittable false
  function:
    hw_addr aa:bb:cc:dd:ee:ff
pci/0000:08:00.1/0: type eth netdev enp8s0f1np1 flavour physical port 1 splittable false

