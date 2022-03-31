Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 698E14EDDDF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 31 Mar 2022 17:49:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22C0F82974;
	Thu, 31 Mar 2022 15:49:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6OME0jb_U_Uc; Thu, 31 Mar 2022 15:49:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB6C881DBF;
	Thu, 31 Mar 2022 15:49:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 117081BF3AE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 15:48:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F103660B08
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 15:48:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=redhat.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2SUmHNf6py2G for <intel-wired-lan@lists.osuosl.org>;
 Thu, 31 Mar 2022 15:48:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2C96960A8B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 31 Mar 2022 15:48:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1648741720;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=4AfbyPy4SWzRXPVjHP0oBQj2Lh8yjlIRr7X3xHwYmlQ=;
 b=itPADY+00zFMgUoyrmBduUN3mOuaxgYUSwyZn/qHR6e7caccRD3tiRYxmAcEnxNY86Z7pg
 uM+VOO7kZAwyAGYQoEE79Ko99DDWsuJdAUxL3ruWfrD6rlt5fXtt8/BotvRu12c+DoJGqh
 aqsWrFDNf/G16jfC3sJaTFEOBuhdNzk=
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-640-M8hUdgw9N_e9gs5xMqi0OA-1; Thu, 31 Mar 2022 11:48:36 -0400
X-MC-Unique: M8hUdgw9N_e9gs5xMqi0OA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
 [10.11.54.6])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E4FC9185A79C;
 Thu, 31 Mar 2022 15:48:35 +0000 (UTC)
Received: from ceranb (unknown [10.40.192.65])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 680862157F29;
 Thu, 31 Mar 2022 15:48:33 +0000 (UTC)
Date: Thu, 31 Mar 2022 17:48:32 +0200
From: Ivan Vecera <ivecera@redhat.com>
To: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Message-ID: <20220331174832.68e17c4a@ceranb>
In-Reply-To: <YkWpNVXYEBo/u3dm@boxer>
References: <20220331105005.2580771-1-ivecera@redhat.com>
 <YkWpNVXYEBo/u3dm@boxer>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix incorrect locking in
 ice_vc_process_vf_msg()
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
Cc: netdev@vger.kernel.org, mschmidt@redhat.com,
 Brett Creeley <brett.creeley@intel.com>,
 open list <linux-kernel@vger.kernel.org>, poros@redhat.com,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 31 Mar 2022 15:14:29 +0200
Maciej Fijalkowski <maciej.fijalkowski@intel.com> wrote:

> On Thu, Mar 31, 2022 at 12:50:04PM +0200, Ivan Vecera wrote:
> > Usage of mutex_trylock() in ice_vc_process_vf_msg() is incorrect
> > because message sent from VF is ignored and never processed.
> > 
> > Use mutex_lock() instead to fix the issue. It is safe because this  
> 
> We need to know what is *the* issue in the first place.
> Could you please provide more context what is being fixed to the readers
> that don't have an access to bugzilla?
> 
> Specifically, what is the case that ignoring a particular message when
> mutex is already held is a broken behavior?

Reproducer:

<code>
#!/bin/sh

set -xe

PF="ens7f0"
VF="${PF}v0"

echo 1 > /sys/class/net/${PF}/device/sriov_numvfs
sleep 2

ip link set ${VF} up
ip addr add 172.30.29.11/24 dev ${VF}

while true; do

# Set VF to be trusted
ip link set ${PF} vf 0 trust on

# Ping server again
ping -c5 172.30.29.2 || {
        echo Ping failed
        ip link show dev ${VF} # <- No carrier here
        break
}

ip link set ${PF} vf 0 trust off
sleep 1

done

echo 0 > /sys/class/net/${PF}/device/sriov_numvfs
</code>

<sample>
[root@wsfd-advnetlab150 ~]# uname -r
5.17.0+ # Current net.git HEAD
[root@wsfd-advnetlab150 ~]# ./repro_simple.sh 
+ PF=ens7f0
+ VF=ens7f0v0
+ echo 1
+ sleep 2
+ ip link set ens7f0v0 up
+ ip addr add 172.30.29.11/24 dev ens7f0v0
+ true
+ ip link set ens7f0 vf 0 trust on
+ ping -c5 172.30.29.2
PING 172.30.29.2 (172.30.29.2) 56(84) bytes of data.
64 bytes from 172.30.29.2: icmp_seq=2 ttl=64 time=0.820 ms
64 bytes from 172.30.29.2: icmp_seq=3 ttl=64 time=0.142 ms
64 bytes from 172.30.29.2: icmp_seq=4 ttl=64 time=0.128 ms
64 bytes from 172.30.29.2: icmp_seq=5 ttl=64 time=0.129 ms

--- 172.30.29.2 ping statistics ---
5 packets transmitted, 4 received, 20% packet loss, time 4110ms
rtt min/avg/max/mdev = 0.128/0.304/0.820/0.298 ms
+ ip link set ens7f0 vf 0 trust off
+ sleep 1
+ true
+ ip link set ens7f0 vf 0 trust on
+ ping -c5 172.30.29.2
PING 172.30.29.2 (172.30.29.2) 56(84) bytes of data.
From 172.30.29.11 icmp_seq=1 Destination Host Unreachable
From 172.30.29.11 icmp_seq=2 Destination Host Unreachable
From 172.30.29.11 icmp_seq=3 Destination Host Unreachable

--- 172.30.29.2 ping statistics ---
5 packets transmitted, 0 received, +3 errors, 100% packet loss, time 4125ms
pipe 3
+ echo Ping failed
Ping failed
+ ip link show dev ens7f0v0
20: ens7f0v0: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc mq state DOWN mode DEFAULT group default qlen 1000
    link/ether de:69:e3:a5:68:b6 brd ff:ff:ff:ff:ff:ff
    altname enp202s0f0v0
+ break
+ echo 0

[root@wsfd-advnetlab150 ~]# dmesg | tail -8
[  220.265891] iavf 0000:ca:01.0: Reset indication received from the PF
[  220.272250] iavf 0000:ca:01.0: Scheduling reset task
[  220.277217] iavf 0000:ca:01.0: Hardware reset detected
[  220.292854] ice 0000:ca:00.0: VF 0 is now trusted
[  220.295027] ice 0000:ca:00.0: VF 0 is being configured in another context that will trigger a VFR, so there is no need to handle this message
[  234.445819] iavf 0000:ca:01.0: PF returned error -64 (IAVF_NOT_SUPPORTED) to our request 9
[  234.466827] iavf 0000:ca:01.0: Failed to delete MAC filter, error IAVF_NOT_SUPPORTED
[  234.474574] iavf 0000:ca:01.0: Remove device
</sample>

User set VF to be trusted so .ndo_set_vf_trust (ice_set_vf_trust) is called.
Function ice_set_vf_trust() takes vf->cfg_lock and calls ice_vc_reset_vf() that
sends message to iavf that initiates reset task. During this reset task iavf sends
config messages to ice. These messages are handled in ice_service_task() context
via ice_clean_adminq_subtask() -> __ice_clean_ctrlq() -> ice_vc_process_vf_msg().

Function ice_vc_process_vf_msg() tries to take vf->cfg_lock but this can be locked
from ice_set_vf_trust() yet (as in sample above). The lock attempt failed so the function
returns, message is not processed.

Thanks,
Ivan

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
