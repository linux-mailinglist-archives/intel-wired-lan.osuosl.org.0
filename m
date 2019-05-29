Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 410362DBEE
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2019 13:33:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8A0A284032;
	Wed, 29 May 2019 11:33:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s8nWQvf25Dhy; Wed, 29 May 2019 11:33:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8ED4784069;
	Wed, 29 May 2019 11:33:18 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B8BAD1BF340
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2019 11:33:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B4BA087E27
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2019 11:33:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ab2b4k2H4n-D for <intel-wired-lan@osuosl.org>;
 Wed, 29 May 2019 11:33:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2D92E8693C
 for <intel-wired-lan@osuosl.org>; Wed, 29 May 2019 11:33:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 May 2019 04:33:15 -0700
X-ExtLoop1: 1
Received: from vlifsht-mobl1.ger.corp.intel.com (HELO [10.185.168.154])
 ([10.185.168.154])
 by orsmga006.jf.intel.com with ESMTP; 29 May 2019 04:33:14 -0700
To: intel-wired-lan@osuosl.org
References: <e070e241-fb65-a5b0-3155-7380a9203bcf@molgen.mpg.de>
 <8627ea1e-8e51-c425-97f6-aeb57176e11a@gmail.com>
From: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Message-ID: <aa7c6d4c-e93b-4ec2-c5d1-0f781ae6d8da@intel.com>
Date: Wed, 29 May 2019 14:33:13 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <8627ea1e-8e51-c425-97f6-aeb57176e11a@gmail.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] Driver has suspect GRO implementation,
 TCP performance may be compromised.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 5/28/2019 20:18, Eric Dumazet wrote:
>
> On 5/28/19 8:42 AM, Paul Menzel wrote:
>> Dear Linux folks,
>>
>>
>> Occasionally, Linux outputs the message below on the workstation Dell
>> OptiPlex 5040 MT.
>>
>>      TCP: net00: Driver has suspect GRO implementation, TCP performance may be compromised.
>>
>> Linux 4.14.55 and Linux 5.2-rc2 show the message, and the WWW also
>> gives some hits [1][2].
>>
>> ```
>> $ sudo ethtool -i net00
>> driver: e1000e
>> version: 3.2.6-k
>> firmware-version: 0.8-4
>> expansion-rom-version:
>> bus-info: 0000:00:1f.6
>> supports-statistics: yes
>> supports-test: yes
>> supports-eeprom-access: yes
>> supports-register-dump: yes
>> supports-priv-flags: no
>> ```
>>
>> Can the driver e1000e be improved?
>>
>> Any idea, what triggers this, as I do not see it every boot? Download
>> of big files?
>>
> Maybe the driver/NIC can receive frames bigger than MTU, although this would be strange.
>
> diff --git a/net/ipv4/tcp_input.c b/net/ipv4/tcp_input.c
> index c61edd023b352123e2a77465782e0d32689e96b0..cb0194f66125bcba427e6e7e3cacf0c93040ef61 100644
> --- a/net/ipv4/tcp_input.c
> +++ b/net/ipv4/tcp_input.c
> @@ -150,8 +150,10 @@ static void tcp_gro_dev_warn(struct sock *sk, const struct sk_buff *skb,
>                  rcu_read_lock();
>                  dev = dev_get_by_index_rcu(sock_net(sk), skb->skb_iif);
>                  if (!dev || len >= dev->mtu)
> -                       pr_warn("%s: Driver has suspect GRO implementation, TCP performance may be compromised.\n",
> -                               dev ? dev->name : "Unknown driver");
> +                       pr_warn("%s: Driver has suspect GRO implementation, TCP performance may be compromised."
> +                               " len %u mtu %u\n",
> +                               dev ? dev->name : "Unknown driver",
> +                               len, dev ? dev->mtu : 0);
>                  rcu_read_unlock();
>          }
>   }
>
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

On some devices due to hardware limitation there's a drop in TCP 
performance.

This is described in this data sheet:

https://www.intel.com/content/dam/www/public/us/en/documents/specification-updates/i218-i219-ethernet-connection-spec-update.pdf?asset=9561

And in this commit:

https://git.kernel.org/pub/scm/linux/kernel/git/jkirsher/next-queue.git/commit/drivers/net/ethernet/intel/e1000e?id=b10effb92e272051dd1ec0d7be56bf9ca85ab927


Disabling TSO fixes the performance drop.

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
