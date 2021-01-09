Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AA3C2EFCB5
	for <lists+intel-wired-lan@lfdr.de>; Sat,  9 Jan 2021 02:27:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C7B3D86EC7;
	Sat,  9 Jan 2021 01:27:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FM3HNBhnRT9D; Sat,  9 Jan 2021 01:27:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7278986EBA;
	Sat,  9 Jan 2021 01:27:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F11431BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Jan 2021 01:26:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A8F5920444
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Jan 2021 01:26:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SdqKa3ITEPxd for <intel-wired-lan@lists.osuosl.org>;
 Sat,  9 Jan 2021 01:26:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 7B506203EF
 for <intel-wired-lan@lists.osuosl.org>; Sat,  9 Jan 2021 01:26:47 +0000 (UTC)
IronPort-SDR: 8IfKCNbX17AttWKY6xGZ72R/Kx1x+2JfeX3rzwn4JF9Qt9qzwZmpEnaopOANK4DrKPC7eagdb6
 537KBp7IwifQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="177774640"
X-IronPort-AV: E=Sophos;i="5.79,333,1602572400"; d="scan'208";a="177774640"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 17:26:46 -0800
IronPort-SDR: M5Tr2XvGFmxX+W4P8wLF02CuPB7ws/wk22au9Q44KKdH932StrzCfalObBHczxDvZ9P6SgNFNJ
 KTEFGhp599sQ==
X-IronPort-AV: E=Sophos;i="5.79,333,1602572400"; d="scan'208";a="399163877"
Received: from jekeller-mobl1.amr.corp.intel.com (HELO [10.212.196.132])
 ([10.212.196.132])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 17:26:43 -0800
To: Vladimir Oltean <olteanv@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>
References: <20210105185902.3922928-1-olteanv@gmail.com>
 <20210106134516.jnh2b5p5oww4cghz@skbuf>
From: Jacob Keller <jacob.e.keller@intel.com>
Organization: Intel Corporation
Message-ID: <e0edda65-5421-94aa-19c5-1bd88a602f92@intel.com>
Date: Fri, 8 Jan 2021 17:26:40 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210106134516.jnh2b5p5oww4cghz@skbuf>
Content-Language: en-US
X-Mailman-Approved-At: Sat, 09 Jan 2021 01:27:38 +0000
Subject: Re: [Intel-wired-lan] [RFC PATCH v2 net-next 00/12] Make
 .ndo_get_stats64 sleepable
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
Cc: Andrew Lunn <andrew@lunn.ch>, Alexei Starovoitov <ast@kernel.org>,
 George McCollister <george.mccollister@gmail.com>,
 Eric Dumazet <edumazet@google.com>,
 Christian Brauner <christian.brauner@ubuntu.com>,
 Andy Gospodarek <andy@greyhouse.net>, dev@openvswitch.org,
 linux-s390@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Daniel Borkmann <daniel@iogearbox.net>,
 Oleksij Rempel <o.rempel@pengutronix.de>, Veaceslav Falico <vfalico@gmail.com>,
 intel-wired-lan@lists.osuosl.org,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@intel.com>,
 Andrii Nakryiko <andriin@fb.com>, Pablo Neira Ayuso <pablo@netfilter.org>,
 Arnd Bergmann <arnd@arndb.de>, Jay Vosburgh <j.vosburgh@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, Jiri Benc <jbenc@redhat.com>,
 Jiri Pirko <jiri@mellanox.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Paolo Abeni <pabeni@redhat.com>, linux-scsi@vger.kernel.org,
 linux-parisc@vger.kernel.org, Paul Gortmaker <paul.gortmaker@windriver.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Florian Westphal <fw@strlen.de>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Taehee Yoo <ap420073@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



On 1/6/2021 5:45 AM, Vladimir Oltean wrote:
> On Tue, Jan 05, 2021 at 08:58:50PM +0200, Vladimir Oltean wrote:
>> This is marked as Request For Comments for a reason.
> 
> If nobody has any objections, I will remove the memory leaks I
> introduced to check if anybody is paying attention, and I will resubmit
> this as a non-RFC series.
> 

I read through this, and it makes sense to me. I admit that I still
don't grasp all the details of the locking involved.

Thanks,
Jake
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
