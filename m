Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B379E5723B
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2019 22:07:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C694186ACB;
	Wed, 26 Jun 2019 20:07:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Tc22fJSuMQ5d; Wed, 26 Jun 2019 20:07:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 94192869D7;
	Wed, 26 Jun 2019 20:07:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E96671BF59C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 20:06:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E550E87D9F
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 20:06:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9SYXqEyf4+Fs for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2019 20:06:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2655A87E38
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 20:06:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 13:06:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,421,1557212400"; d="scan'208";a="170165635"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Jun 2019 13:06:38 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
 ORSMSX109.amr.corp.intel.com (10.22.240.7) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 26 Jun 2019 13:06:37 -0700
Received: from orsmsx115.amr.corp.intel.com ([169.254.4.248]) by
 ORSMSX153.amr.corp.intel.com ([169.254.12.252]) with mapi id 14.03.0439.000;
 Wed, 26 Jun 2019 13:06:37 -0700
From: "Patel, Vedang" <vedang.patel@intel.com>
To: "Kirsher, Jeffrey T" <jeffrey.t.kirsher@intel.com>
Thread-Topic: [PATCH net-next v6 1/8] igb: clear out skb->tstamp after
 reading the txtime
Thread-Index: AQHVK6JhPjkpa7dX90S71tT+LMvAd6auzVqAgAAF/AA=
Date: Wed, 26 Jun 2019 20:06:32 +0000
Message-ID: <0F0BD2D0-0021-46F7-984E-D39E0D2D90CC@intel.com>
References: <1561500439-30276-1-git-send-email-vedang.patel@intel.com>
 <1561500439-30276-2-git-send-email-vedang.patel@intel.com>
 <4f0681155a6057bf40e281bfc251aba60c296201.camel@intel.com>
In-Reply-To: <4f0681155a6057bf40e281bfc251aba60c296201.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.24.14.64]
Content-ID: <C6C9D7F9AC364F4786AA3706B9BCDD8D@intel.com>
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
Cc: Jiri Pirko <jiri@resnulli.us>, "l@dorileo.org" <l@dorileo.org>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Jakub Kicinski <jakub.kicinski@netronome.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Murali
 Karicheri <m-karicheri2@ti.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 Cong Wang <xiyou.wangcong@gmail.com>, Eric Dumazet <eric.dumazet@gmail.com>,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jeff,

> On Jun 26, 2019, at 12:44 PM, Kirsher, Jeffrey T <jeffrey.t.kirsher@intel.com> wrote:
> 
> On Tue, 2019-06-25 at 15:07 -0700, Vedang Patel wrote:
>> If a packet which is utilizing the launchtime feature (via SO_TXTIME
>> socket
>> option) also requests the hardware transmit timestamp, the hardware
>> timestamp is not delivered to the userspace. This is because the
>> value in
>> skb->tstamp is mistaken as the software timestamp.
>> 
>> Applications, like ptp4l, request a hardware timestamp by setting the
>> SOF_TIMESTAMPING_TX_HARDWARE socket option. Whenever a new timestamp
>> is
>> detected by the driver (this work is done in igb_ptp_tx_work() which
>> calls
>> igb_ptp_tx_hwtstamps() in igb_ptp.c[1]), it will queue the timestamp
>> in the
>> ERR_QUEUE for the userspace to read. When the userspace is ready, it
>> will
>> issue a recvmsg() call to collect this timestamp.  The problem is in
>> this
>> recvmsg() call. If the skb->tstamp is not cleared out, it will be
>> interpreted as a software timestamp and the hardware tx timestamp
>> will not
>> be successfully sent to the userspace. Look at skb_is_swtx_tstamp()
>> and the
>> callee function __sock_recv_timestamp() in net/socket.c for more
>> details.
>> 
>> Signed-off-by: Vedang Patel <vedang.patel@intel.com>
>> ---
>> drivers/net/ethernet/intel/igb/igb_main.c | 1 +
>> 1 file changed, 1 insertion(+)
> 
> Since this fix is really not needed for the rest of the patch series,
> if you have to do another version of the series, can you drop this
> patch from any future version?  I don't want to keep spinning my
> validation team on a updated version of this patch, that is not really
> being updated.
> 
> I plan to take this version of the patch and will hold onto it for my
> next 1GbE updates to Dave.

This patch is needed for ptp4l to function properly when txtime-assist mode is enabled. So, dropping this patch will break the series. When are you planning to submit the next set of updates to Dave? If a new version is needed, I can plan to send it out after you send your updates.

Thanks,
Vedang
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
