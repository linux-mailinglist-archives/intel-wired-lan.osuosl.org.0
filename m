Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB493F59EC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Aug 2021 10:38:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E75EE4051E;
	Tue, 24 Aug 2021 08:38:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dXJEuRDcgMX3; Tue, 24 Aug 2021 08:38:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7104640547;
	Tue, 24 Aug 2021 08:38:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 456841BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 08:38:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 33EB5406BB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 08:38:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eMZASDJSyi_2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Aug 2021 08:38:29 +0000 (UTC)
X-Greylist: delayed 00:12:49 by SQLgrey-1.8.0
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 453794057C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Aug 2021 08:38:21 +0000 (UTC)
Received: from [192.168.0.48] ([217.24.224.38]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MrQR7-1mmoTJ0Tsl-00oVEn; Tue, 24 Aug 2021 10:25:26 +0200
To: Dan Carpenter <dan.carpenter@oracle.com>
References: <20210824081039.GA16756@kili>
From: Stefan Assmann <sassmann@kpanic.de>
Message-ID: <74732a5e-b9c4-c119-ea38-b604e252ec33@kpanic.de>
Date: Tue, 24 Aug 2021 10:25:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210824081039.GA16756@kili>
Content-Language: en-US
X-Provags-ID: V03:K1:r5f6TREO74ADV/66oSBnpOWeq+cuEtad2Aidv/F5xfJ/jDF5R0H
 YWvVSrcRit90hjzw0TTTMNAe4TQFgHm0JX0YLMLkH7hPNOBQFLFCmvjOhcD8WZBHUJqmpmY
 nCUaigbLbjqBcF2/yilrC8xMMzJ4FP1n8n+oG2jbPumt+FZlKBPy2ZVU0TeA0u857cbx8sQ
 4Yg2uwfAEgVdvs/0u47YA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:PsC8L1WnYmg=:gkCMXzSKnDwRTNR6iSINnA
 jDuENqmLpP5Cwm6zmhUnUbtxc5mUBznwqdYkyzPZt6o5dSWOJ2b+h3gpvUgvP8RGwQUnPamqL
 6MrO4rgtn6A0dSqbNyVGRnj3OEpHB5qN+RLeIwHrIw5DTswc6niM+j3ZUP7XrG3o7Eg0yPRq8
 nHou8UK+ZSoNuvf3UOlliBBo2D8LVYJWeJkMlHKtbexA+Z9BLrc0QHR1JcqlYTwt6rquaiTW9
 NzOK1osqyzm9V+6ISwmvd+zxZAfe8sJ0V5LQLtHVzp1JEp2oNdYry9lMekO8a6UhM1N8ggX1f
 2V/4G7bFu+XXk4xKqZvcztm7+mRD2nj2CmLpVkMsMenQDOEjfL/kBo9RJ2AbBUlJpSlSx/Zi6
 ohS8NZtft/b97HYryCbDAJBX3mMGMyTqyiNoLtx/T3LmIbNa5rzXaecHn5BiN9e4vDXx8oMsr
 2qUICfzOvKEIJsOZ/GH+ekJZc8Ee2XWI4dds+jZet5i1g9vt5Na3wp685LA6pcu98O67KOyAg
 iuNy98PYgQzYI++GLxN/GZ4W3NUHNlV0Ng3jIb6P6MFTkik2z/icJ97uppR+EkwNdZtwrOOWS
 q4oCcStnC/s5vQtipLzJw1ougqutq8ghN69m432dE9a4fHfzbFtF7OanbzbBdDtoayUCr/qqn
 AjkbxFAdklTmUZcAtD2edueGmYSO832gaEAejdVSZ7vjUTuXfEnOzXHNtiVzJmIk1VPm80vUq
 GjTsQFYxkaXT0o0O3HzjzdaLL5ouWhaQwE0b8tKkryPrk/MlpAaLdWwpTnC3yJK6BffmMGOZj
 2KRKy0Y522GKn890YAE9HYcjtVIKEwthTOlB34wNtc3Efpx80LKxybeEp0HsoIKBJQYBvSR
Subject: Re: [Intel-wired-lan] [bug report] iavf: use mutexes for locking of
 critical sections
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 24.08.21 10:10, Dan Carpenter wrote:
> Hello Stefan Assmann,
> 
> The patch 5ac49f3c2702: "iavf: use mutexes for locking of critical
> sections" from Aug 4, 2021, leads to the following
> Smatch static checker warning:

Thanks for the report, I'll take a look!

  Stefan

> 	drivers/net/ethernet/intel/iavf/iavf_main.c:2019 iavf_watchdog_task()
> 	error: double unlocked '&adapter->crit_lock' (orig line 1968)
> 
> drivers/net/ethernet/intel/iavf/iavf_main.c
>     1932 static void iavf_watchdog_task(struct work_struct *work)
>     1933 {
>     1934 	struct iavf_adapter *adapter = container_of(work,
>     1935 						    struct iavf_adapter,
>     1936 						    watchdog_task.work);
>     1937 	struct iavf_hw *hw = &adapter->hw;
>     1938 	u32 reg_val;
>     1939 
>     1940 	if (!mutex_trylock(&adapter->crit_lock))
>     1941 		goto restart_watchdog;
>     1942 
>     1943 	if (adapter->flags & IAVF_FLAG_PF_COMMS_FAILED)
>     1944 		adapter->state = __IAVF_COMM_FAILED;
>     1945 
>     1946 	switch (adapter->state) {
>     1947 	case __IAVF_COMM_FAILED:
>     1948 		reg_val = rd32(hw, IAVF_VFGEN_RSTAT) &
>     1949 			  IAVF_VFGEN_RSTAT_VFR_STATE_MASK;
>     1950 		if (reg_val == VIRTCHNL_VFR_VFACTIVE ||
>     1951 		    reg_val == VIRTCHNL_VFR_COMPLETED) {
>     1952 			/* A chance for redemption! */
>     1953 			dev_err(&adapter->pdev->dev,
>     1954 				"Hardware came out of reset. Attempting reinit.\n");
>     1955 			adapter->state = __IAVF_STARTUP;
>     1956 			adapter->flags &= ~IAVF_FLAG_PF_COMMS_FAILED;
>     1957 			queue_delayed_work(iavf_wq, &adapter->init_task, 10);
>     1958 			mutex_unlock(&adapter->crit_lock);
>     1959 			/* Don't reschedule the watchdog, since we've restarted
>     1960 			 * the init task. When init_task contacts the PF and
>     1961 			 * gets everything set up again, it'll restart the
>     1962 			 * watchdog for us. Down, boy. Sit. Stay. Woof.
>     1963 			 */
>     1964 			return;
>     1965 		}
>     1966 		adapter->aq_required = 0;
>     1967 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
>     1968 		mutex_unlock(&adapter->crit_lock);
>                         ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> Unlocked here
> 
>     1969 		queue_delayed_work(iavf_wq,
>     1970 				   &adapter->watchdog_task,
>     1971 				   msecs_to_jiffies(10));
>     1972 		goto watchdog_done;
>                         ^^^^^^^^^^^^^^^^^^^
> Goto
> 
>     1973 	case __IAVF_RESETTING:
>     1974 		mutex_unlock(&adapter->crit_lock);
>     1975 		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ * 2);
>     1976 		return;
>     1977 	case __IAVF_DOWN:
>     1978 	case __IAVF_DOWN_PENDING:
>     1979 	case __IAVF_TESTING:
>     1980 	case __IAVF_RUNNING:
>     1981 		if (adapter->current_op) {
>     1982 			if (!iavf_asq_done(hw)) {
>     1983 				dev_dbg(&adapter->pdev->dev,
>     1984 					"Admin queue timeout\n");
>     1985 				iavf_send_api_ver(adapter);
>     1986 			}
>     1987 		} else {
>     1988 			/* An error will be returned if no commands were
>     1989 			 * processed; use this opportunity to update stats
>     1990 			 */
>     1991 			if (iavf_process_aq_command(adapter) &&
>     1992 			    adapter->state == __IAVF_RUNNING)
>     1993 				iavf_request_stats(adapter);
>     1994 		}
>     1995 		break;
>     1996 	case __IAVF_REMOVE:
>     1997 		mutex_unlock(&adapter->crit_lock);
>     1998 		return;
>     1999 	default:
>     2000 		goto restart_watchdog;
>     2001 	}
>     2002 
>     2003 		/* check for hw reset */
>     2004 	reg_val = rd32(hw, IAVF_VF_ARQLEN1) & IAVF_VF_ARQLEN1_ARQENABLE_MASK;
>     2005 	if (!reg_val) {
>     2006 		adapter->flags |= IAVF_FLAG_RESET_PENDING;
>     2007 		adapter->aq_required = 0;
>     2008 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
>     2009 		dev_err(&adapter->pdev->dev, "Hardware reset detected\n");
>     2010 		queue_work(iavf_wq, &adapter->reset_task);
>     2011 		goto watchdog_done;
>     2012 	}
>     2013 
>     2014 	schedule_delayed_work(&adapter->client_task, msecs_to_jiffies(5));
>     2015 watchdog_done:
>     2016 	if (adapter->state == __IAVF_RUNNING ||
>     2017 	    adapter->state == __IAVF_COMM_FAILED)
>     2018 		iavf_detect_recover_hung(&adapter->vsi);
> --> 2019 	mutex_unlock(&adapter->crit_lock);
>                 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> Double unlock.
> 
>     2020 restart_watchdog:
>     2021 	if (adapter->aq_required)
>     2022 		queue_delayed_work(iavf_wq, &adapter->watchdog_task,
>     2023 				   msecs_to_jiffies(20));
>     2024 	else
>     2025 		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ * 2);
>     2026 	queue_work(iavf_wq, &adapter->adminq_task);
>     2027 }
> 
> regards,
> dan carpenter
> 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
