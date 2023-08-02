Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF3C76DB86
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Aug 2023 01:30:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C49F641D86;
	Wed,  2 Aug 2023 23:30:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C49F641D86
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691019007;
	bh=/TaRV1ydAvA+g78D/X8XryfXb6TMcytNSgJDaprJNAc=;
	h=From:To:In-Reply-To:References:Date:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ePGRQs8Qox/44p9ZZ78d/fH68il5uxB6SUyCUo14zuuv2Ue0fgNyH535gtF+Gr+2L
	 rfycH7xSEhnJo7hUIAEZe5krtCGi+yECzn57+nISazb7LtVW5WU0o5b5q+DUWpLSf1
	 g6vnsfLy2zsbD9zHfKOLuliarvMgOT2jYoHpbTvdD5X+QDVGLYQp5mneOLEOpFyLNO
	 6ihUzVcaDrM25XqCRzacruwHeSg3+n0IlUGnOxrhKBHKNsIO4NGLrADwFNjgwnXk0D
	 Fr8TPIQFJGCcs/Q/Dr8eTxDxbBu+OuWuHM317kRubE1HVnrnrEA731XWW59EFAiXZN
	 PMsOkyk//mmEg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bpmlVlBd2Vr3; Wed,  2 Aug 2023 23:30:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E60A441D95;
	Wed,  2 Aug 2023 23:30:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E60A441D95
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 953E91BF391
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 23:30:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7911941D67
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 23:30:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7911941D67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VGdSlgORIWQF for <intel-wired-lan@lists.osuosl.org>;
 Wed,  2 Aug 2023 23:29:59 +0000 (UTC)
Received: from mgamail.intel.com (unknown [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0467641BC0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  2 Aug 2023 23:29:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0467641BC0
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="369727671"
X-IronPort-AV: E=Sophos;i="6.01,250,1684825200"; d="scan'208";a="369727671"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 16:29:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="819405156"
X-IronPort-AV: E=Sophos;i="6.01,250,1684825200"; d="scan'208";a="819405156"
Received: from rbappers-mobl2.amr.corp.intel.com (HELO vcostago-mobl3)
 ([10.209.84.112])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 16:29:56 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Vladimir Oltean <vladimir.oltean@nxp.com>, netdev@vger.kernel.org
In-Reply-To: <20230801182421.1997560-10-vladimir.oltean@nxp.com>
References: <20230801182421.1997560-1-vladimir.oltean@nxp.com>
 <20230801182421.1997560-10-vladimir.oltean@nxp.com>
Date: Wed, 02 Aug 2023 16:29:55 -0700
Message-ID: <87pm4510r0.fsf@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691018998; x=1722554998;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=h99e192bzCZMzg/eEGhvy+QImTiT2HSo8oaY9XUpOy4=;
 b=gLYydFd3v5JaFCp+cFMHGQbkRNePcOjRxqzfrWl+WuZiZ+e7kOmiMugk
 nJdBrBWCv2sy3vSr2jwxEY2tIIJhaT3400moJYEgEIeM5YmHVY33P5+28
 jc1w96+lj3e4xB1XYfcfTfhuu/FuhWm644MMOiI5StVsyiXys3NRu2sDy
 TUn3hsvuVODRasVRTDbw+YXHbhCpTr/2h7/uDbiPG1MkZVK8Cg6ytzOkV
 8ZfQB7IfTQQXsjyqqACEdwyuii2YFnVWrFuaxeZNbAs8oTvkX7+D77rVx
 W1+Kg/PJ1lL9elWx/JQsFFAn7MzAwWLdpMckagJushs/UROgD7vIosDS8
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gLYydFd3
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 09/10]
 selftests/tc-testing: test that taprio can only be attached as root
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
Cc: Jiri Pirko <jiri@resnulli.us>, Pedro Tammela <pctammela@mojatatu.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Maxim Georgiev <glipus@gmail.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Peilin Ye <yepeilin.cs@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Zhengchao Shao <shaozhengchao@huawei.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Vladimir Oltean <vladimir.oltean@nxp.com> writes:

> Check that the "Can only be attached as root qdisc" error message from
> taprio is effective by attempting to attach it to a class of another
> taprio qdisc. That operation should fail.
>
> In the bug that was squashed by change "net/sched: taprio: try again to
> report q->qdiscs[] to qdisc_leaf()", grafting a child taprio to a root
> software taprio would be misinterpreted as a change() to the root
> taprio. Catch this by looking at whether the base-time of the root
> taprio has changed to follow the base-time of the child taprio,
> something which should have absolutely never happened assuming correct
> semantics.
>

This test is somehow flaky (all others are fine), 1 in ~4 times, it fails.

Taking a look at the test I couldn't quickly find out the reason for the
flakyness.

Here's the verbose output of one of the failures:

vcgomes@otc-cfl-clr-30 ~/src/net-next/tools/testing/selftests/tc-testing $ sudo ./tdc.py -e 39b4 -v
 -- ns/SubPlugin.__init__
ns/SubPlugin.adjust_command
adjust_command:  return command [/sbin/ip link add v0p0 type veth peer name v0p1]
_exec_cmd:  command "/sbin/ip link add v0p0 type veth peer name v0p1"
ns/SubPlugin.adjust_command
adjust_command:  return command [/sbin/ip link set v0p0 up]
_exec_cmd:  command "/sbin/ip link set v0p0 up"
ns/SubPlugin.adjust_command
adjust_command:  return command [/sbin/ip netns add tcut]
_exec_cmd:  command "/sbin/ip netns add tcut"
ns/SubPlugin.adjust_command
adjust_command:  return command [/sbin/ip link set v0p1 netns tcut]
_exec_cmd:  command "/sbin/ip link set v0p1 netns tcut"
ns/SubPlugin.adjust_command
adjust_command:  return command [/sbin/ip -n tcut link set v0p1 up]
_exec_cmd:  command "/sbin/ip -n tcut link set v0p1 up"
	====================
=====> Test 39b4: Reject grafting taprio as child qdisc of software taprio
-----> prepare stage
ns/SubPlugin.adjust_command
adjust_command:  stage is setup; inserting netns stuff in command [echo "1 1 8" > /sys/bus/netdevsim/new_device] list [['echo', '"1', '1', '8"', '>', '/sys/bus/netdevsim/new_device']]
adjust_command:  return command [/sbin/ip netns exec tcut echo "1 1 8" > /sys/bus/netdevsim/new_device]
command "/sbin/ip netns exec tcut echo "1 1 8" > /sys/bus/netdevsim/new_device"
ns/SubPlugin.adjust_command
adjust_command:  stage is setup; inserting netns stuff in command [/sbin/tc qdisc replace dev eth0 handle 8001: parent root stab overhead 24 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 0 sched-entry S ff 20000000 clockid CLOCK_TAI] list [['/sbin/tc', 'qdisc', 'replace', 'dev', 'eth0', 'handle', '8001:', 'parent', 'root', 'stab', 'overhead', '24', 'taprio', 'num_tc', '8', 'map', '0', '1', '2', '3', '4', '5', '6', '7', 'queues', '1@0', '1@1', '1@2', '1@3', '1@4', '1@5', '1@6', '1@7', 'base-time', '0', 'sched-entry', 'S', 'ff', '20000000', 'clockid', 'CLOCK_TAI']]
adjust_command:  return command [/sbin/ip netns exec tcut /sbin/tc qdisc replace dev eth0 handle 8001: parent root stab overhead 24 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 0 sched-entry S ff 20000000 clockid CLOCK_TAI]
command "/sbin/ip netns exec tcut /sbin/tc qdisc replace dev eth0 handle 8001: parent root stab overhead 24 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 0 sched-entry S ff 20000000 clockid CLOCK_TAI"
-----> execute stage
ns/SubPlugin.adjust_command
adjust_command:  stage is execute; inserting netns stuff in command [/sbin/tc qdisc replace dev eth0 parent 8001:7 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 200 sched-entry S ff 20000000 clockid CLOCK_TAI] list [['/sbin/tc', 'qdisc', 'replace', 'dev', 'eth0', 'parent', '8001:7', 'taprio', 'num_tc', '8', 'map', '0', '1', '2', '3', '4', '5', '6', '7', 'queues', '1@0', '1@1', '1@2', '1@3', '1@4', '1@5', '1@6', '1@7', 'base-time', '200', 'sched-entry', 'S', 'ff', '20000000', 'clockid', 'CLOCK_TAI']]
adjust_command:  return command [/sbin/ip netns exec tcut /sbin/tc qdisc replace dev eth0 parent 8001:7 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 200 sched-entry S ff 20000000 clockid CLOCK_TAI]
command "/sbin/ip netns exec tcut /sbin/tc qdisc replace dev eth0 parent 8001:7 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 200 sched-entry S ff 20000000 clockid CLOCK_TAI"
-----> verify stage
ns/SubPlugin.adjust_command
adjust_command:  stage is verify; inserting netns stuff in command [/sbin/tc -j qdisc show dev eth0 root | jq '.[].options.base_time'] list [['/sbin/tc', '-j', 'qdisc', 'show', 'dev', 'eth0', 'root', '|', 'jq', "'.[].options.base_time'"]]
adjust_command:  return command [/sbin/ip netns exec tcut /sbin/tc -j qdisc show dev eth0 root | jq '.[].options.base_time']
command "/sbin/ip netns exec tcut /sbin/tc -j qdisc show dev eth0 root | jq '.[].options.base_time'"
-----> teardown stage
ns/SubPlugin.adjust_command
adjust_command:  stage is teardown; inserting netns stuff in command [/sbin/tc qdisc del dev eth0 root] list [['/sbin/tc', 'qdisc', 'del', 'dev', 'eth0', 'root']]
adjust_command:  return command [/sbin/ip netns exec tcut /sbin/tc qdisc del dev eth0 root]
command "/sbin/ip netns exec tcut /sbin/tc qdisc del dev eth0 root"
ns/SubPlugin.adjust_command
adjust_command:  stage is teardown; inserting netns stuff in command [echo "1" > /sys/bus/netdevsim/del_device] list [['echo', '"1"', '>', '/sys/bus/netdevsim/del_device']]
adjust_command:  return command [/sbin/ip netns exec tcut echo "1" > /sys/bus/netdevsim/del_device]
command "/sbin/ip netns exec tcut echo "1" > /sys/bus/netdevsim/del_device"
ns/SubPlugin.post_suite
ns/SubPlugin.adjust_command
adjust_command:  return command [/sbin/ip netns delete tcut]
_exec_cmd:  command "/sbin/ip netns delete tcut"

All test results:

1..1
not ok 1 39b4 - Reject grafting taprio as child qdisc of software taprio
	Could not match regex pattern. Verify command output:
parse error: Objects must consist of key:value pairs at line 1, column 334


Cheers,
-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
