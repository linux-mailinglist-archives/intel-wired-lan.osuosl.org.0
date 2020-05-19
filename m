Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A9F1DA5B0
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2020 01:37:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A54C686F54;
	Tue, 19 May 2020 23:37:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id upb0-FEOWRRl; Tue, 19 May 2020 23:37:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E927D86F55;
	Tue, 19 May 2020 23:37:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B50CD1BF573
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 23:37:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id ABD8286F52
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 23:37:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 12NsiXu-cz3T for <intel-wired-lan@lists.osuosl.org>;
 Tue, 19 May 2020 23:37:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 7227086F51
 for <intel-wired-lan@lists.osuosl.org>; Tue, 19 May 2020 23:37:18 +0000 (UTC)
IronPort-SDR: QBIp6un4aK3eWGvMyhAjG1F2QFsJuGbV1NVxZc2Rs23WRlXCEw9ynftpzpa/H4RXU3z2mXo0wZ
 44+mJNwFgS9Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 16:37:17 -0700
IronPort-SDR: efCpJZMQHt0EarEpHhcIdrY++jdSzf6UO8hAsrlDSoHhaJEIp/v3IWrIJ+4Hpf2pW9+ERbCb6z
 8uoY6XsoCpUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,411,1583222400"; d="scan'208";a="466318416"
Received: from stputhen-mobl1.amr.corp.intel.com (HELO ellie) ([10.209.5.127])
 by fmsmga006.fm.intel.com with ESMTP; 19 May 2020 16:37:16 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: Andre Guedes <andre.guedes@intel.com>, intel-wired-lan@lists.osuosl.org
In-Reply-To: <158992799425.36166.17850279656312622646@twxiong-mobl.amr.corp.intel.com>
References: <20200516012948.3173993-1-vinicius.gomes@intel.com>
 <158992799425.36166.17850279656312622646@twxiong-mobl.amr.corp.intel.com>
Date: Tue, 19 May 2020 16:37:16 -0700
Message-ID: <87y2pnmr83.fsf@intel.com>
MIME-Version: 1.0
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

Andre Guedes <andre.guedes@intel.com> writes:

> Hi,
>
> Quoting Vinicius Costa Gomes (2020-05-15 18:29:44)
>> One example, for retrieving and setting the configuration:
>> 
>> $ ethtool $ sudo ./ethtool --show-frame-preemption enp3s0
>> Frame preemption settings for enp3s0:
>>         support: supported
>>         active: active
>
> IIUC the code in patch 2, 'active' is the actual configuration knob that
> enables or disables the FP functionality on the NIC.
>
> That sounded a bit confusing to me since the spec uses the term 'active' to
> indicate FP is currently enabled at both ends, and it is a read-only
> information (see 12.30.1.4 from IEEE 802.1Q-2018). Maybe if we called this
> 'enabled' it would be more clear.

Good point. Will rename this to "enabled".

>
>>         supported queues: 0xf
>>         supported queues: 0xe
>>         minimum fragment size: 68
>
> I'm assuming this is the configuration knob for the minimal non-final fragment
> defined in 802.3br.
>
> My understanding from the specs is that this value must be a multiple from 64
> and cannot assume arbitrary values like shown here. See 99.4.7.3 from IEEE
> 802.3 and Note 1 in S.2 from IEEE 802.1Q. In the previous discussion about FP,
> we had this as a multiplier factor, not absolute value.

I thought that exposing this as "(1 + N)*64" (with 0 <= N <= 3) that it
was more related to what's exposed via LLDP than the actual capabilities
of the hardware. And for the hardware I have actually the values
supported are: (1 + N)*64 + 4 (for N = 0, 1, 2, 3).

So I thought I was better to let the driver decide what values are
acceptable.

This is a good question for people working with other hardware.


-- 
Vinicius
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
