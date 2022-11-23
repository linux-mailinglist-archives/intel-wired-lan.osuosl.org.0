Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8384663641F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Nov 2022 16:40:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03647414C4;
	Wed, 23 Nov 2022 15:40:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03647414C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1669218002;
	bh=VlqpC5YNhCDcQOC/pWgomKmMIgTvleAXiU5ezh6pGeg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=jWvIyLlgKjQWgQnleokDNxWWnuWz2/W0e8b6afBulywOFcGOVGGP27vUNADD88lUp
	 F8jw5aqnQqazqI2w7lbhjzPDll0vEN/xpNOr2SdlGsCu8JhYZC65ZNqRsLK1JE04IT
	 T9N95IIqKIOTn/dG98yisw3jhhLtwoR5Xk6Fuy05ML+Cbxc+YClGt3uN3+oMkq7to6
	 XpzROAkE3wv8aUIEUPUX6KofQ4O2fwIFh0cJiTn5+ldYkDv7dY9QIzVwBt5V51KC+Z
	 UDlSXaXYzSnCl4kX1q/FRF3Y+P76cH4HGwlVZiBzNQbFXt5kUfrbwFOFw8D4tmVnxN
	 cSASJvd3Uhc4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sjGNb2zq4Yuo; Wed, 23 Nov 2022 15:40:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B435A410B1;
	Wed, 23 Nov 2022 15:40:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B435A410B1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 142441BF3DF
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 15:39:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E1C8D61058
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 15:39:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1C8D61058
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eLOg5w8i0iEM for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Nov 2022 15:39:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F2E9607B5
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1F2E9607B5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Nov 2022 15:39:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="314127014"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="314127014"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 07:39:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="672912616"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="672912616"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 23 Nov 2022 07:39:54 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 23 Nov 2022 07:39:53 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 23 Nov 2022 07:39:53 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 23 Nov 2022 07:39:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d9s4JM1UPR9VU+Z9KrWQh70EVO6FseMz+/ObnWHx6SL2XJZpLRBc5TruKQ0ugKv4IrBFh8nF1Lck8dpGQCqKnFsWqBeIJdokLicHUv6LK1b83M3sKu+tFU3jy4q+N4gwVKZrnl4WWzdk4JJIXZ/GZkOipT9K3PwPZmiNvf+Xt++GdbI/kYDrmm5froPvWVJ4bAv9TrNhxXZaFe5xbwZxXp4MGq21YCa+4ar0sOIKEM6gmrSYXT26LhS2SUMjqFT6bdGUslUZoPb1VOWQ2+ylGMeThvJwHkOZQAZ/hbWx3m3VHBtciqY4nFjODbzkch1PV/4a/MrvTvj6XklIZkaKrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vs8qUeFaG7CyAv+w8NH/9HwLKEzBnR3ZfbnYgDnfbSU=;
 b=FTllJ3QgTq33bjq1Ebdb1hSxMlFolv+L9FpXtZiGHUws9wLs7d8kZNI2jm9DSuB2n2lz6WEeb4llAIGXVJelT/s83BVUzTNinM/zBDW0KyLuTs7f9BbAFfJvm5tNMiXK/awpdN9jsS/yMaAA1T52EQDGO68UeqqLmDcJNGRYRHuV5/CN6DG2yK0F53srecgOYvS9vdrPBZyw71CwEFeTfUlCswxS3HGZAblxIpWsHILorPkdMyPFDir7nqTFsHLEREAjq42+5GzlFTlu3YNQzyJhE8YDXwOCc8ZHZjTM6UYaVUu/HaAANsQV9HvK5yAwXA0QhF3CBueY5pjTsLc6Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 CY8PR11MB7685.namprd11.prod.outlook.com (2603:10b6:930:73::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5857.18; Wed, 23 Nov 2022 15:39:51 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::5f39:1ef:13a5:38b6]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::5f39:1ef:13a5:38b6%6]) with mapi id 15.20.5834.009; Wed, 23 Nov 2022
 15:39:51 +0000
Date: Wed, 23 Nov 2022 16:39:46 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Jesse Brandeburg <jesse.brandeburg@intel.com>
Message-ID: <Y34+won6ZEU1uxal@boxer>
References: <20221122234825.3360663-1-jesse.brandeburg@intel.com>
Content-Disposition: inline
In-Reply-To: <20221122234825.3360663-1-jesse.brandeburg@intel.com>
X-ClientProxiedBy: FR0P281CA0001.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:15::6) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|CY8PR11MB7685:EE_
X-MS-Office365-Filtering-Correlation-Id: f7cb7c86-37a4-40eb-7b37-08dacd68f5fd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: WI5H5L1qKUTokHWxw8EKMcsKDAaptR8xICLyvw0QdCNVjgxWxS6gZr/8iEXAhhAFQe//tdOe+M3GcMuljjh9uPPyNylLwXnhGrXHo4u4qRni0IJXz3Kf5z41B5DAdsM0TMRqQr+f962OIRJbZE8vRr4vruLDMY0plRO+MMmuKbUgGpVqIo3v7LW4w1ohi80ivy0s6pM5DPGb0aEA7H4qUP/yXxl3MCp7tu/TW5MLgmSbB2j+vhf6qmk/HQWvLF7/vsYwgdHtlOYJCQpAXgMBrVLm2BOmIytdmPPctveJ/O2SXQsfJKyulatJsdw3jA6kGLxwisZv8AXAmuItSfAbKPke1QJ1/DT7HrVF99w1F8xP1SJiLwOSMiItu7jpmxoN2czhg4irXZclOVxuE09g+jBnBRMVEcyHO+tYcDoKqoQwqiqqrMd8DNpQzFHjfIZZOZdIMnN0ms3ZZ3LvGZ+TpAUlllUS6cwReWqejr5jpVSwud/GHnfD9wLELKabhKvgRZgahefkiqIOCfGAIUCR0NeoejtgsDrzLYslbH5TIEBWZys57ok3VZpV1i54D6mJNSphJ/ZBMlKqXSd62/sS84033LWB4sON63z0DhkHkYnAz40NCvmKj0qL5J0BrHaWWQD90XcM2WW7cEIRIkMLMV3Wo+Y31OS0b0DUMrneTditbGkDFk6YVKphVqYzEtwu
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(366004)(396003)(346002)(39860400002)(376002)(136003)(451199015)(82960400001)(38100700002)(44832011)(41300700001)(86362001)(5660300002)(83380400001)(186003)(107886003)(26005)(9686003)(6506007)(6666004)(6512007)(478600001)(6486002)(316002)(6636002)(66946007)(8676002)(4326008)(8936002)(6862004)(66556008)(66476007)(2906002)(33716001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9f+j0N6m1x2ZUiRpOYEfEB6xUNpj4MWstXYHvSH2U/3RXs8tPRkXdP4JQSDk?=
 =?us-ascii?Q?kyO2lhDiWIhF9lPf02GJDnj4M7t49kvrwxozUDR5yh71YQSx2S+MwUYyVW17?=
 =?us-ascii?Q?ruEOTpdGCjHyZ8gS70QSHNets2TrF7EeYG1UIzFhUl5hZWj7lsgib+2zO5wj?=
 =?us-ascii?Q?4TQfMYK6vFI5hChXPKgwYldjSHCtDnWtaOJctdOKRoln33omDclTYdTXBdU9?=
 =?us-ascii?Q?6sjpCv5F46WiQ/Eqj6qGzrUKTA5wU90nHBbXm1PLnYKVYheUCOVUyAEnO8mX?=
 =?us-ascii?Q?jcyVRylGsGWdDpljEJUoOgu1ROur/UHqyWqGOwNzoq2y8zIs1BMiiWAn9uzY?=
 =?us-ascii?Q?99+J9a3pdvXRTl9XyZ2ZXwUQVhjV1i6HRzPdyCT7eOz2qrINLl00ZFF5vSEb?=
 =?us-ascii?Q?mTWTfmEYUK+6FKeF3E5d0UXnw1zi9z2FLlRoZdWgPdHJve3GWyWOXQ0rtHBt?=
 =?us-ascii?Q?/XtYEeLa4AsBxrUJGerOOP1unB277yu9iAXzGADJd/wsQOP7m3o7B5GL0SIp?=
 =?us-ascii?Q?fLpNS/GgZxy/BA7Thw3XZR7lILqj+QGaFsJWTL84fS1k0yCfjYIyNZlqzJGp?=
 =?us-ascii?Q?EsYXNBvzVRDnfvTkIHnJirc08H02lOKv+NlzXodDbFLxAiVgwfXgIljy5v9X?=
 =?us-ascii?Q?Do4DCOqIkIYDgjbb0ycPmXNooQK5N25JMLYlh1k1cnGcCB12CsR2dIzc3jQQ?=
 =?us-ascii?Q?2adNxIBqliJB0/WCRGGVSg5LdR0B6IHSF/WwEKrRbSsPibe+/LycekCVbDzu?=
 =?us-ascii?Q?hrbfsHAHt8iQrTdkcXYSkBu7mq+SW5nJBAzF3NpGuBsa++tKs66NPe9Spm6F?=
 =?us-ascii?Q?ddcd9s42S1/1TIuPjuPG4+fNC5XRuZdP4J0fRNiLHyAGXT1RgIxXF/sozFk7?=
 =?us-ascii?Q?odTGmappFP6Wqo6ZHKEEYLHHHC+vxth8hjKkp4lmDMF1NonS/+KIh68wzPOL?=
 =?us-ascii?Q?N76xNWtV5rVxU/WyulSrPu1qvqA0Hq5qeGTtER9iRi/6491ZNZModtdHWQdr?=
 =?us-ascii?Q?j9Jp84/0k/vsJmHYHdkc5752yptR1zK9O4nqtmdHLHpT9GbPcspTEhUNRssr?=
 =?us-ascii?Q?a54ZSOcGPwPo5pzwJ/cV8/j9NFUhvJ0R8obyfypzBQuAe5FYqEpbAmBUoZKe?=
 =?us-ascii?Q?yb/Y+lz6gGNm3wXwb7o+tbnppznYlizdcdj+Ka59fkClgyIU2s6GTcfH5twP?=
 =?us-ascii?Q?m5sWefvUFWEdU6IxNQnFBF5RB7ehpANOf0bYFGhTLgBUe9nf68IFdNyxHAC0?=
 =?us-ascii?Q?6j06ad4nF+Ezk77Q8gGX/lO/tXl4CLPcVt1ESRg0yMlv5EK/rVtyDMzYUeJA?=
 =?us-ascii?Q?UGAINwEEW9X79Kt7M9+qHxCpHtyPfRHWXyG9W/W1zXPKnEOGdvlV9H38Vv+v?=
 =?us-ascii?Q?l4ogFiGbo8tkK6nr25us6U0KZI8W5iQabSBajxES629Zh/3NEVdbGCL6IDdS?=
 =?us-ascii?Q?kC0UOhfrPEz0yDqaCmix7OvLRm09GLOohiUFrtA5sTOIdYnC6w2u14pXfMmd?=
 =?us-ascii?Q?ap5rp5EY0bDin4YbFH+P9xCXaHjL7GiU0eRio4RlGScD36hR8x4u0RhrK6hT?=
 =?us-ascii?Q?bhRYnPi0iQBG1vkhF0Rrc31xAcGMPv9KEeRQce5lB/jxTHJlNIU7Y7rP8coT?=
 =?us-ascii?Q?Ow=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f7cb7c86-37a4-40eb-7b37-08dacd68f5fd
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2022 15:39:51.4762 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AoopCQP2myvnSWksjfhthAm2wNIi3T7s/U9/w2GAmFb1Fm0741sDyhUJyLPssho7SrNWpC1H3OR3kZj6HdfSmzc8q3bKaRwr3RUR1B+Z6uQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7685
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669217995; x=1700753995;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DhWltxEsSnTQIBBI2I6i3WCYoyfw4TdFAouanENwVrY=;
 b=Kqe9dloD4bMjTM0gjVc2x+XgCe69gHG8pQirwFCXbja24rKaUNKB/i5C
 VA+aqJrWm1LX+wOaGjNSTdeSKqA2SMCSqeCxVHEqp9l9gEBhADdjQTnAf
 prlEdNe/P1hJHjmA1Lr3gB4ErZBhrHM8dAqlxtyeZ8Fd/ZVGkhU4lcK4W
 4bwYKAS/9crLDtkwSMwVPjCOZ5di04yRAejzHFiJ55X6cr2+Mu5rAvyXX
 YPDYAWxn6cvIOTSESKEgoiXISdCPLoZsvA/QnzmcNGn6sJHUQMKz39B08
 aFa3Tvryg7/h8epXW+ewxgH6pZWLuDrUpUOKtCdhPmpf8bqx5ZZVaMVuf
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Kqe9dloD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] ixgbe: XDP: fix checker
 warning from rcu pointer
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
Cc: intel-wired-lan@lists.osuosl.org,
 Magnus Karlsson <magnus.karlsson@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Nov 22, 2022 at 03:48:25PM -0800, Jesse Brandeburg wrote:
> The ixgbe driver uses an older style failure mode when initializing the
> XDP program and the queues. It causes some warnings when running C=2
> checking builds (and it's the last one in the ethernet/intel tree).
> 
> $ make W=1 C=2 M=`pwd`/drivers/net/ethernet/intel modules
> .../ixgbe_main.c:10301:25: error: incompatible types in comparison expression (different address spaces):
> .../ixgbe_main.c:10301:25:    struct bpf_prog [noderef] __rcu *
> .../ixgbe_main.c:10301:25:    struct bpf_prog *
> 
> Fix the problem by removing the line that tried to re-xchg "the old_prog
> pointer" if there was an error, to make this driver act like the other
> drivers which return the error code without "pointer restoration."
> 
> Also, update the "copy the pointer" logic to use WRITE_ONCE as many/all
> the other drivers do, which required making a change in two separate
> functions that write the xdp_prog variable in the ring.
> 
> The code here was modeled after the code in i40e/i40e_xdp_setup().
> 
> NOTE: Compile-tested only.

Giving samples/bpf/xdp1 a spin wouldn't hurt :P

Otherwise, this LGTM, shouldn't break anything:
Acked-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> 
> CC: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> CC: Magnus Karlsson <magnus.karlsson@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index ab8370c413f3..93699d2ae051 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -6647,7 +6647,7 @@ int ixgbe_setup_rx_resources(struct ixgbe_adapter *adapter,
>  			     rx_ring->queue_index, ixgbe_rx_napi_id(rx_ring)) < 0)
>  		goto err;
>  
> -	rx_ring->xdp_prog = adapter->xdp_prog;
> +	WRITE_ONCE(rx_ring->xdp_prog, adapter->xdp_prog);
>  
>  	return 0;
>  err:
> @@ -10297,14 +10297,13 @@ static int ixgbe_xdp_setup(struct net_device *dev, struct bpf_prog *prog)
>  			synchronize_rcu();
>  		err = ixgbe_setup_tc(dev, adapter->hw_tcs);
>  
> -		if (err) {
> -			rcu_assign_pointer(adapter->xdp_prog, old_prog);
> +		if (err)
>  			return -EINVAL;
> -		}
>  	} else {
> -		for (i = 0; i < adapter->num_rx_queues; i++)
> -			(void)xchg(&adapter->rx_ring[i]->xdp_prog,
> -			    adapter->xdp_prog);
> +		for (i = 0; i < adapter->num_rx_queues; i++) {
> +			WRITE_ONCE(adapter->rx_ring[i]->xdp_prog,
> +				   adapter->xdp_prog);
> +		}
>  	}
>  
>  	if (old_prog)
> 
> base-commit: 50ae3afd446667c6fe540f41b84ff83172c38b27
> -- 
> 2.31.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
