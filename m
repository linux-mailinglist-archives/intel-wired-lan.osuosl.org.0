Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0371DA4A6
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2020 00:40:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BD08E85955;
	Tue, 19 May 2020 22:40:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4iN-qYPwbyMG; Tue, 19 May 2020 22:40:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 06D8B859D5;
	Tue, 19 May 2020 22:40:05 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A81F01BF283
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 22:40:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A3EDB858FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 22:40:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bg8I1TYR1lY6 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 22:40:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BE03D85910
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 22:40:02 +0000 (UTC)
IronPort-SDR: CC8GdHcjef1EwO9kHAwwmpWbSZJ2E9KkHqB4xP1xV0+iTeyy2AImQpcGfoyUt6px5kZ1Mn7Bxw
 9AV9TUsWbT1w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 15:40:02 -0700
IronPort-SDR: /Th1+z8ehhqt38oT9/3cHmqcYgThu7VTOmYANFyXjdfXxutI415n3IMm2hMdxZtfJRnmt0ojIQ
 mHReObVM8IJw==
X-IronPort-AV: E=Sophos;i="5.73,411,1583222400"; d="scan'208";a="289134456"
Received: from twxiong-mobl.amr.corp.intel.com (HELO localhost)
 ([10.254.97.160])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 15:39:58 -0700
MIME-Version: 1.0
In-Reply-To: <20200516012948.3173993-1-vinicius.gomes@intel.com>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
From: Andre Guedes <andre.guedes@intel.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>,
 intel-wired-lan@lists.osuosl.org
Date: Tue, 19 May 2020 15:39:54 -0700
Message-ID: <158992799425.36166.17850279656312622646@twxiong-mobl.amr.corp.intel.com>
User-Agent: alot/0.9
Subject: Re: [Intel-wired-lan] [next-queue RFC 0/4] ethtool: Add support for
 frame preemption
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
Cc: Jose.Abreu@synopsys.com, netdev@vger.kernel.org, po.liu@nxp.com,
 m-karicheri2@ti.com, vladimir.oltean@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi,

Quoting Vinicius Costa Gomes (2020-05-15 18:29:44)
> One example, for retrieving and setting the configuration:
> 
> $ ethtool $ sudo ./ethtool --show-frame-preemption enp3s0
> Frame preemption settings for enp3s0:
>         support: supported
>         active: active

IIUC the code in patch 2, 'active' is the actual configuration knob that
enables or disables the FP functionality on the NIC.

That sounded a bit confusing to me since the spec uses the term 'active' to
indicate FP is currently enabled at both ends, and it is a read-only
information (see 12.30.1.4 from IEEE 802.1Q-2018). Maybe if we called this
'enabled' it would be more clear.

>         supported queues: 0xf
>         supported queues: 0xe
>         minimum fragment size: 68

I'm assuming this is the configuration knob for the minimal non-final fragment
defined in 802.3br.

My understanding from the specs is that this value must be a multiple from 64
and cannot assume arbitrary values like shown here. See 99.4.7.3 from IEEE
802.3 and Note 1 in S.2 from IEEE 802.1Q. In the previous discussion about FP,
we had this as a multiplier factor, not absolute value.

Regards,

Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
