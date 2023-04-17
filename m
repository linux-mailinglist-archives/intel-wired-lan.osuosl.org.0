Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D9636E4160
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 09:41:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5572841BBF;
	Mon, 17 Apr 2023 07:41:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5572841BBF
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681717263;
	bh=KUO27IVZ78alFhX6G6qIbV0u7noyM2xWKIA8GqD0BiE=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=SulQwkVUOFbg/tlWeSWFU2R0EwyfkH2IgekekgveWaG1xUNzrt9Y5jUuxIwMVgO4e
	 D0Dy4pLai4vIcQjAbiN7gMoqbVuOOLO18kHTdvQV4fKwWLe3t8Fx+1WqTqO/6yv8t0
	 kKTFXStGecWIHjFdVYa1XFZ4yX3M7R5t8Jo5bAVorloKP4KqWfg1ND1lNohAT2JkTZ
	 sO9f6Isfay3RJ+oHdKhEdC4OiR/N/jrtDwsFxUDHkOcC7Rn13Y40AKzv696F155o1k
	 g9RKFFSNdgT6DyCFy6i9OfTYqNnXiHnHkKZYfU4aLxLm2WWv9R/mSh1vXdDmEfZvw6
	 tVNmDyD8hPHHg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bAY6bO4Uaz_p; Mon, 17 Apr 2023 07:41:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D8D4E41718;
	Mon, 17 Apr 2023 07:41:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8D4E41718
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E13C61C417A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 07:40:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B909B60E3B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 07:40:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B909B60E3B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fmx7KN-NtfHw for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 07:40:55 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 339D060A61
Received: from mail-m11875.qiye.163.com (mail-m11875.qiye.163.com
 [115.236.118.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 339D060A61
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 07:40:54 +0000 (UTC)
Received: from localhost.localdomain (unknown [113.92.156.116])
 by mail-m11875.qiye.163.com (Hmail) with ESMTPA id 9568528115B;
 Mon, 17 Apr 2023 15:40:48 +0800 (CST)
From: Ding Hui <dinghui@sangfor.com.cn>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
Date: Mon, 17 Apr 2023 15:40:14 +0800
Message-Id: <20230417074016.3920-1-dinghui@sangfor.com.cn>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSh1LVhhIQ0MZHxofQxpCH1UTARMWGhIXJBQOD1
 lXWRgSC1lBWUpKSFVCSVVKTk1VSkpNWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVSktLVUtZBg++
X-HM-Tid: 0a878e28c4152eb1kusn9568528115b
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pi46FBw6UT0TQx0OOBQOGQIc
 QzNPCk5VSlVKTUNKTEpMSU9CT01IVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
 QVlKSkhVQklVSk5NVUpKTVlXWQgBWUFJTElONwY+
Subject: [Intel-wired-lan] [RESEND PATCH net 0/2] iavf: Fix issues when
 setting channels concurrency with removing
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
Cc: keescook@chromium.org, grzegorzx.szczurek@intel.com,
 Ding Hui <dinghui@sangfor.com.cn>, linux-kernel@vger.kernel.org,
 huangcun@sangfor.com.cn, linux-hardening@vger.kernel.org,
 netdev@vger.kernel.org, pengdonglin@sangfor.com.cn
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The patchset fix two issues which can be reproduced by the following script:

[root@host ~]# cat test-iavf-1.sh
#!/bin/bash

pf_dbsf="0000:41:00.0"
vf0_dbsf="0000:41:02.0"
g_pids=()

function do_set_numvf()
{
    echo 2 >/sys/bus/pci/devices/${pf_dbsf}/sriov_numvfs
    sleep $((RANDOM%3+1))
    echo 0 >/sys/bus/pci/devices/${pf_dbsf}/sriov_numvfs
    sleep $((RANDOM%3+1))
}

function do_set_channel()
{
    local nic=$(ls -1 --indicator-style=none /sys/bus/pci/devices/${vf0_dbsf}/net/)
    [ -z "$nic" ] && { sleep $((RANDOM%3)) ; return 1; }
    ifconfig $nic 192.168.18.5 netmask 255.255.255.0
    ifconfig $nic up
    ethtool -L $nic combined 1
    ethtool -L $nic combined 4
    sleep $((RANDOM%3))
}

function on_exit()
{
    local pid
    for pid in "${g_pids[@]}"; do
        kill -0 "$pid" &>/dev/null && kill "$pid" &>/dev/null
    done
    g_pids=()
}

trap "on_exit; exit" EXIT

while :; do do_set_numvf ; done &
g_pids+=($!)
while :; do do_set_channel ; done &
g_pids+=($!)

wait


Ding Hui (2):
  iavf: Fix use-after-free in free_netdev
  iavf: Fix out-of-bounds when setting channels on remove

 drivers/net/ethernet/intel/iavf/iavf_ethtool.c | 4 +++-
 drivers/net/ethernet/intel/iavf/iavf_main.c    | 6 +-----
 2 files changed, 4 insertions(+), 6 deletions(-)

-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
