Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A293C6FC4A6
	for <lists+intel-wired-lan@lfdr.de>; Tue,  9 May 2023 13:12:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F0D7843F3;
	Tue,  9 May 2023 11:12:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F0D7843F3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683630732;
	bh=ZEJRgDmiSQWU/wGZvh22bcaVvTgQK/wfGME/UqsmgWQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=e4/eTKb+Tn3P6WO8Hq/HcEhglUIbLlSJEkIRu2WJGI2/q6KiPmEzwpgA9b7JJl6xr
	 2NA/lOEHQbXM+kwAbWSpbzo2FNve57M8zdlPMSeAmNLaUH5AZg/cOOn5bOHFueS95D
	 863aJSPqYD+nI5lFiH0dqgBCJsQV1GErDo4+O+FHxjo2bOzg0pn584Z4tdT3p0daFJ
	 Rk/jDiX7kXQBt4ZPNXg/g0tUK5scWvCF5bDC3++29t4wo+S1K5CUpnL05E+B1z5zDs
	 rqSm9BV6wxR9A65Ougj7ByaWrJXGyP4zibxp53N9o8ZUdN8bWBmjw+u1HvZD1y8kmp
	 f3J5ccHCLNUbA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bdTttkzCGMCA; Tue,  9 May 2023 11:12:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F3753822E3;
	Tue,  9 May 2023 11:12:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F3753822E3
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 68FC41BF29A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 11:12:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 47E5B405E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 11:12:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47E5B405E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 46cRo_q4HJoE for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 May 2023 11:12:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3397B40114
Received: from mail-m127104.qiye.163.com (mail-m127104.qiye.163.com
 [115.236.127.104])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3397B40114
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 May 2023 11:12:03 +0000 (UTC)
Received: from localhost.localdomain (unknown
 [IPV6:240e:3b7:3277:3e50:6cb9:7ae9:9442:26ad])
 by mail-m127104.qiye.163.com (Hmail) with ESMTPA id 1CF0CA402FD;
 Tue,  9 May 2023 19:11:53 +0800 (CST)
From: Ding Hui <dinghui@sangfor.com.cn>
To: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, intel-wired-lan@lists.osuosl.org,
 jesse.brandeburg@intel.com, anthony.l.nguyen@intel.com
Date: Tue,  9 May 2023 19:11:46 +0800
Message-Id: <20230509111148.4608-1-dinghui@sangfor.com.cn>
X-Mailer: git-send-email 2.17.1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
 tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDGE8YVk9JS04eShlMHU0eGVUTARMWGhIXJBQOD1
 lXWRgSC1lBWUlPSx5BSBlMQUhJTExBSB5OS0FNGBlCQUwaHkJBQk9PSUFJTRofWVdZFhoPEhUdFF
 lBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Tid: 0a880035ec10b282kuuu1cf0ca402fd
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MAg6Nzo5HD0KIyszEVEjNAw6
 MRYwCwlVSlVKTUNITUhLTEpPSEpMVTMWGhIXVR8SFRwTDhI7CBoVHB0UCVUYFBZVGBVFWVdZEgtZ
 QVlJT0seQUgZTEFISUxMQUgeTktBTRgZQkFMGh5CQUJPT0lBSU0aH1lXWQgBWUFIS09INwY+
Subject: [Intel-wired-lan] [PATCH net v5 0/2] iavf: Fix issues when setting
 channels concurrency with removing
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
 mitch.a.williams@intel.com, linux-kernel@vger.kernel.org,
 huangcun@sangfor.com.cn, gregory.v.rose@intel.com, michal.kubiak@intel.com,
 jeffrey.t.kirsher@intel.com, simon.horman@corigine.com,
 pengdonglin@sangfor.com.cn, Ding Hui <dinghui@sangfor.com.cn>,
 netdev@vger.kernel.org, linux-hardening@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The patchset fix two issues which can be reproduced by the following script:

[root@host ~]# cat repro.sh
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
