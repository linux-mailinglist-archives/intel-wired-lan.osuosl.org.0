Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28C2618E86B
	for <lists+intel-wired-lan@lfdr.de>; Sun, 22 Mar 2020 12:36:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C6CBD88516;
	Sun, 22 Mar 2020 11:36:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SYd-d75w5+Fp; Sun, 22 Mar 2020 11:36:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 49165886DC;
	Sun, 22 Mar 2020 11:36:19 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 86EA31BF3EF
 for <intel-wired-lan@osuosl.org>; Sun, 22 Mar 2020 11:36:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 81B7E8735E
 for <intel-wired-lan@osuosl.org>; Sun, 22 Mar 2020 11:36:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CEDnT2IM6RhK for <intel-wired-lan@osuosl.org>;
 Sun, 22 Mar 2020 11:36:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DB79D86B17
 for <intel-wired-lan@osuosl.org>; Sun, 22 Mar 2020 11:36:15 +0000 (UTC)
IronPort-SDR: C4t52GQws9u/z8zIyvTyHEv+kcN4Q5m8L1V6vVmL/0UwlXFFXPrZV9EoiQjv46eHPLikrt1m+b
 lLDpnMUqNv2g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2020 04:36:13 -0700
IronPort-SDR: wH/n93rxCtRHBWEIyzT21q8Aqx/Zuw2/lMYsuC/f7uroT13uvbzGhmvWCLx/py1pIupidUgrId
 0jnFZOgdSvOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,292,1580803200"; d="scan'208";a="325310457"
Received: from sneftin-mobl1.ger.corp.intel.com (HELO [10.255.203.30])
 ([10.255.203.30])
 by orsmga001.jf.intel.com with ESMTP; 22 Mar 2020 04:36:10 -0700
To: Andre Guedes <andre.guedes@linux.intel.com>,
 Vitaly Lifshits <vitaly.lifshits@intel.com>, intel-wired-lan@osuosl.org
References: <20200318135446.10921-1-vitaly.lifshits@intel.com>
 <158465511927.38369.12297264423437326370@aarayaol-mobl.amr.corp.intel.com>
From: "Neftin, Sasha" <sasha.neftin@intel.com>
Message-ID: <a26c7977-4c99-cd4e-2e13-8a5a9bdab0a4@intel.com>
Date: Sun, 22 Mar 2020 13:36:06 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <158465511927.38369.12297264423437326370@aarayaol-mobl.amr.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-wired-lan] [PATCH v2] igc: add support to interrupt,
 eeprom, registers and link self-tests
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

On 3/19/2020 23:58, Andre Guedes wrote:
> Hi Vitaly,
> 
> Quoting Vitaly Lifshits (2020-03-18 06:54:46)
>> +static void igc_diag_test(struct net_device *netdev,
>> +                         struct ethtool_test *eth_test, u64 *data)
>> +{
>> +       struct igc_adapter *adapter = netdev_priv(netdev);
>> +       bool if_running = netif_running(netdev);
>> +
>> +       if (IGC_REMOVED(adapter->hw.hw_addr)) {
> 
> I'm not sure I follow how this check is expected to work. A quick grep shows
> IGC_REMOVED expands to 0 so this if-block is never executed. Could you please
> elaborate a bit on that?
Thanks Andre for catch this. IGC_REMOVED define has been introduced as a 
leftover from the previous device. i225 no support virtualization and 
this definition should be drop.
Also, we will send patch to clean IGC_REMOVE definition from igc driver.
> 
> Also, I noticed we have similar checks in functions from igc_diag.c that are
> called from igc_diag_test().
> 
>> +               dev_err(&adapter->pdev->dev,
>> +                       "Adapter removed - test blocked\n");
>> +               data[0] = 1;
>> +               data[1] = 1;
>> +               data[2] = 1;
>> +               data[3] = 1;
>> +               data[4] = 1;
>> +               eth_test->flags |= ETH_TEST_FL_FAILED;
>> +               return;
>> +       }
>> +       set_bit(__IGC_TESTING, &adapter->state);
>> +       if (eth_test->flags == ETH_TEST_FL_OFFLINE) {
>> +               /* Offline tests */
> 
> This comment is not really helpful and should be removed.
> 
>> +               dev_info(&adapter->pdev->dev,
>> +                        "offline testing starting\n");
> 
> Unnecessary line break here. I could spot the same issue in other places in
> this patch, BTW.
> 
>> +
>> +               /* Link test performed before hardware reset so autoneg doesn't
>> +                * interfere with test result
>> +                */
>> +               if (igc_link_test(adapter, &data[4]))
>> +                       eth_test->flags |= ETH_TEST_FL_FAILED;
>> +
>> +               if (if_running)
>> +                       /* indicate we're in test mode */
>> +                       igc_close(netdev);
> 
> This comment seems to be unrelated to the code below it.
> 
>> +               else
>> +                       igc_reset(adapter);
>> +
>> +               dev_info(&adapter->pdev->dev,
>> +                        "register testing starting\n");
>> +               if (igc_reg_test(adapter, &data[0]))
>> +                       eth_test->flags |= ETH_TEST_FL_FAILED;
>> +
>> +               igc_reset(adapter);
>> +
>> +               dev_info(&adapter->pdev->dev,
>> +                        "eeprom testing starting\n");
>> +               if (igc_eeprom_test(adapter, &data[1]))
>> +                       eth_test->flags |= ETH_TEST_FL_FAILED;
>> +
>> +               igc_reset(adapter);
>> +
>> +               dev_info(&adapter->pdev->dev,
>> +                        "interrupt testing starting\n");
>> +               if (igc_eeprom_test(adapter, &data[2]))
> 
> I think we want to call igc_intr_test() here instead.
> 
>> +                       eth_test->flags |= ETH_TEST_FL_FAILED;
>> +
>> +               igc_reset(adapter);
>> +
>> +               /* loopback test will be implemented in the future */
>> +               data[3] = 0;
>> +
>> +               clear_bit(__IGC_TESTING, &adapter->state);
>> +               if (if_running)
>> +                       igc_open(netdev);
>> +       } else {
>> +               dev_info(&adapter->pdev->dev,
>> +                        "online testing starting\n");
>> +
>> +               /* register, eeprom, intr and loopback tests not run online */
>> +               data[0] = 0;
>> +               data[1] = 0;
>> +               data[2] = 0;
>> +               data[3] = 0;
> 
> Instead of using hard coded numbers to index 'data', please use meaningful
> macros. See IGB driver as example.
> 
>> +
>> +               if (igc_link_test(adapter, &data[4]))
>> +                       eth_test->flags |= ETH_TEST_FL_FAILED;
> 
> I think we're missing clearing the __IGC_TESTING bit in this 'else' block. BTW,
> could we clear it after the if-else block instead?
> 
>> +       }
>> +
>> +       msleep_interruptible(4 * 1000);
>> +}
> 
> Regards,
> 
> Andre
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
