Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C743591CE
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2019 05:01:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9CABE203FA;
	Fri, 28 Jun 2019 03:01:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZfqOeWXTb7JB; Fri, 28 Jun 2019 03:01:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6378120459;
	Fri, 28 Jun 2019 03:01:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4FEEE1BF418
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 03:01:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 49B3420419
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 03:01:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OxkqoSOmlU-x for <intel-wired-lan@lists.osuosl.org>;
 Fri, 28 Jun 2019 03:01:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id E162B203FA
 for <intel-wired-lan@lists.osuosl.org>; Fri, 28 Jun 2019 03:01:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 20:01:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,426,1557212400"; d="scan'208";a="153246529"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
 by orsmga007.jf.intel.com with ESMTP; 27 Jun 2019 20:01:27 -0700
Received: from orsmsx123.amr.corp.intel.com (10.22.240.116) by
 ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 27 Jun 2019 20:01:27 -0700
Received: from orsmsx103.amr.corp.intel.com ([169.254.5.135]) by
 ORSMSX123.amr.corp.intel.com ([169.254.1.46]) with mapi id 14.03.0439.000;
 Thu, 27 Jun 2019 20:01:27 -0700
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Patel, Vedang" <vedang.patel@intel.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [PATCH net-next v6 1/8] igb: clear out skb->tstamp after
 reading the txtime
Thread-Index: AQHVK6JhORymmhQOqEeRp0Ppbqf7zaawZCXw
Date: Fri, 28 Jun 2019 03:01:26 +0000
Message-ID: <309B89C4C689E141A5FF6A0C5FB2118B970B546C@ORSMSX103.amr.corp.intel.com>
References: <1561500439-30276-1-git-send-email-vedang.patel@intel.com>
 <1561500439-30276-2-git-send-email-vedang.patel@intel.com>
In-Reply-To: <1561500439-30276-2-git-send-email-vedang.patel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNzgwYjFjZDEtNjU5ZS00NTc4LTk5OWEtN2Q1YjBkYWUzMDNmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoieGlrZ1VzVlNcLytLUWhNVkE0cHI5dFpENGNMWUVXUVBqTTlmUHFmam54QkhIaCszb01FRmw1RHJ6NTlRcmdYTm4ifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [PATCH net-next v6 1/8] igb: clear out
 skb->tstamp after reading the txtime
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
Cc: "jiri@resnulli.us" <jiri@resnulli.us>, "l@dorileo.org" <l@dorileo.org>,
 "sergei.shtylyov@cogentembedded.com" <sergei.shtylyov@cogentembedded.com>,
 "jakub.kicinski@netronome.com" <jakub.kicinski@netronome.com>,
 "jhs@mojatatu.com" <jhs@mojatatu.com>,
 "m-karicheri2@ti.com" <m-karicheri2@ti.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "xiyou.wangcong@gmail.com" <xiyou.wangcong@gmail.com>,
 "eric.dumazet@gmail.com" <eric.dumazet@gmail.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> From: Patel, Vedang
> Sent: Tuesday, June 25, 2019 3:07 PM
> To: netdev@vger.kernel.org
> Cc: Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com>; davem@davemloft.net;
> jhs@mojatatu.com; xiyou.wangcong@gmail.com; jiri@resnulli.us; intel-wired-
> lan@lists.osuosl.org; Gomes, Vinicius <vinicius.gomes@intel.com>;
> l@dorileo.org; jakub.kicinski@netronome.com; m-karicheri2@ti.com;
> sergei.shtylyov@cogentembedded.com; eric.dumazet@gmail.com; Brown,
> Aaron F <aaron.f.brown@intel.com>; Patel, Vedang <vedang.patel@intel.com>
> Subject: [PATCH net-next v6 1/8] igb: clear out skb->tstamp after reading the
> txtime
> 
> If a packet which is utilizing the launchtime feature (via SO_TXTIME socket
> option) also requests the hardware transmit timestamp, the hardware
> timestamp is not delivered to the userspace. This is because the value in
> skb->tstamp is mistaken as the software timestamp.
> 
> Applications, like ptp4l, request a hardware timestamp by setting the
> SOF_TIMESTAMPING_TX_HARDWARE socket option. Whenever a new
> timestamp is
> detected by the driver (this work is done in igb_ptp_tx_work() which calls
> igb_ptp_tx_hwtstamps() in igb_ptp.c[1]), it will queue the timestamp in the
> ERR_QUEUE for the userspace to read. When the userspace is ready, it will
> issue a recvmsg() call to collect this timestamp.  The problem is in this
> recvmsg() call. If the skb->tstamp is not cleared out, it will be
> interpreted as a software timestamp and the hardware tx timestamp will not
> be successfully sent to the userspace. Look at skb_is_swtx_tstamp() and the
> callee function __sock_recv_timestamp() in net/socket.c for more details.
> 
> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
> ---
>  drivers/net/ethernet/intel/igb/igb_main.c | 1 +
>  1 file changed, 1 insertion(+)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
