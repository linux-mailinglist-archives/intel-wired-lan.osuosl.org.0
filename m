Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E71318C2A3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2020 22:58:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AE1B223528;
	Thu, 19 Mar 2020 21:58:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B8gip+85fXL3; Thu, 19 Mar 2020 21:58:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id E1868204F9;
	Thu, 19 Mar 2020 21:58:47 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 69B751BF30F
 for <intel-wired-lan@osuosl.org>; Thu, 19 Mar 2020 21:58:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6180385D8F
 for <intel-wired-lan@osuosl.org>; Thu, 19 Mar 2020 21:58:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n3Bt2aw6VmG9 for <intel-wired-lan@osuosl.org>;
 Thu, 19 Mar 2020 21:58:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2A05F84331
 for <intel-wired-lan@osuosl.org>; Thu, 19 Mar 2020 21:58:44 +0000 (UTC)
IronPort-SDR: qsK/7yBwjATK2ySncZFJGjTe4p2hVjna617jPgcjvVf5z96VXYiGXjWK5nhgA6WvhC9oZMuVbp
 IAVPA94HKnjg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 14:58:43 -0700
IronPort-SDR: KFAclOajrKFVWjNuAY6Mi7J9WfU+oJ3TqmcliIHwFCnO1mg6kBcdUMq7qgKMLjM6ytQZ/XH2qc
 xMXztDLluRGQ==
X-IronPort-AV: E=Sophos;i="5.70,573,1574150400"; d="scan'208";a="238606311"
Received: from aarayaol-mobl.amr.corp.intel.com (HELO localhost)
 ([10.254.102.6])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 14:58:42 -0700
MIME-Version: 1.0
In-Reply-To: <20200318135446.10921-1-vitaly.lifshits@intel.com>
References: <20200318135446.10921-1-vitaly.lifshits@intel.com>
From: Andre Guedes <andre.guedes@linux.intel.com>
To: Vitaly Lifshits <vitaly.lifshits@intel.com>, intel-wired-lan@osuosl.org
Date: Thu, 19 Mar 2020 14:58:39 -0700
Message-ID: <158465511927.38369.12297264423437326370@aarayaol-mobl.amr.corp.intel.com>
User-Agent: alot/0.9
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Vitaly,

Quoting Vitaly Lifshits (2020-03-18 06:54:46)
> +static void igc_diag_test(struct net_device *netdev,
> +                         struct ethtool_test *eth_test, u64 *data)
> +{
> +       struct igc_adapter *adapter = netdev_priv(netdev);
> +       bool if_running = netif_running(netdev);
> +
> +       if (IGC_REMOVED(adapter->hw.hw_addr)) {

I'm not sure I follow how this check is expected to work. A quick grep shows
IGC_REMOVED expands to 0 so this if-block is never executed. Could you please
elaborate a bit on that?

Also, I noticed we have similar checks in functions from igc_diag.c that are
called from igc_diag_test().

> +               dev_err(&adapter->pdev->dev,
> +                       "Adapter removed - test blocked\n");
> +               data[0] = 1;
> +               data[1] = 1;
> +               data[2] = 1;
> +               data[3] = 1;
> +               data[4] = 1;
> +               eth_test->flags |= ETH_TEST_FL_FAILED;
> +               return;
> +       }
> +       set_bit(__IGC_TESTING, &adapter->state);
> +       if (eth_test->flags == ETH_TEST_FL_OFFLINE) {
> +               /* Offline tests */

This comment is not really helpful and should be removed.

> +               dev_info(&adapter->pdev->dev,
> +                        "offline testing starting\n");

Unnecessary line break here. I could spot the same issue in other places in
this patch, BTW.

> +
> +               /* Link test performed before hardware reset so autoneg doesn't
> +                * interfere with test result
> +                */
> +               if (igc_link_test(adapter, &data[4]))
> +                       eth_test->flags |= ETH_TEST_FL_FAILED;
> +
> +               if (if_running)
> +                       /* indicate we're in test mode */
> +                       igc_close(netdev);

This comment seems to be unrelated to the code below it.

> +               else
> +                       igc_reset(adapter);
> +
> +               dev_info(&adapter->pdev->dev,
> +                        "register testing starting\n");
> +               if (igc_reg_test(adapter, &data[0]))
> +                       eth_test->flags |= ETH_TEST_FL_FAILED;
> +
> +               igc_reset(adapter);
> +
> +               dev_info(&adapter->pdev->dev,
> +                        "eeprom testing starting\n");
> +               if (igc_eeprom_test(adapter, &data[1]))
> +                       eth_test->flags |= ETH_TEST_FL_FAILED;
> +
> +               igc_reset(adapter);
> +
> +               dev_info(&adapter->pdev->dev,
> +                        "interrupt testing starting\n");
> +               if (igc_eeprom_test(adapter, &data[2]))

I think we want to call igc_intr_test() here instead.

> +                       eth_test->flags |= ETH_TEST_FL_FAILED;
> +
> +               igc_reset(adapter);
> +
> +               /* loopback test will be implemented in the future */
> +               data[3] = 0;
> +
> +               clear_bit(__IGC_TESTING, &adapter->state);
> +               if (if_running)
> +                       igc_open(netdev);
> +       } else {
> +               dev_info(&adapter->pdev->dev,
> +                        "online testing starting\n");
> +
> +               /* register, eeprom, intr and loopback tests not run online */
> +               data[0] = 0;
> +               data[1] = 0;
> +               data[2] = 0;
> +               data[3] = 0;

Instead of using hard coded numbers to index 'data', please use meaningful
macros. See IGB driver as example.

> +
> +               if (igc_link_test(adapter, &data[4]))
> +                       eth_test->flags |= ETH_TEST_FL_FAILED;

I think we're missing clearing the __IGC_TESTING bit in this 'else' block. BTW,
could we clear it after the if-else block instead?

> +       }
> +
> +       msleep_interruptible(4 * 1000);
> +}

Regards,

Andre
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
