Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A1567B1245
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Sep 2023 08:02:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 76A676109D;
	Thu, 28 Sep 2023 06:02:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 76A676109D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1695880953;
	bh=pZlWw9Feuv0/QCzZM2Srz+TrbMKF3zJ3Lofi3JAc3jI=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=FzNG10c9XmItqQJ3FeRkVEhF6D31pCYsF8mewW/0Kz5lSeBWuCN5A2vaOk5ExbdXr
	 Qf6dJhRhPzyqFOvDBmz4G+DS8OQsPo9VL0IppcfTOmySDKOTrICAtDqrVEA+/VT0of
	 fHyi3lo42n6uw+8zjehwbEsU7ghWGs8LWJLHjMkfbZoFZH+b+plHsk9TdQMY0LNy+6
	 vAK8ZvLqKeYlsSEEMkGfSaakft50whSRKLe+HBARuWQ+Jinclen28/CCmp0rbkchBm
	 9Y5pQGDVtH5VsqnvkT54IRKyA73YPb9eE8bM20dn3Gk2NEW5G/JLABAHkEG8Xem/da
	 tdvW+NGVad5cA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id f-gT4yDts1fV; Thu, 28 Sep 2023 06:02:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6D00260BE5;
	Thu, 28 Sep 2023 06:02:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D00260BE5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7D3B31BF275
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Sep 2023 06:02:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5D67B81F41
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Sep 2023 06:02:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D67B81F41
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p2Q5DKO5FhLd for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Sep 2023 06:02:26 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0455581F27
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Sep 2023 06:02:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0455581F27
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="361366395"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; d="scan'208";a="361366395"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 23:02:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="699156072"
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; d="scan'208";a="699156072"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Sep 2023 23:02:23 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 27 Sep 2023 23:02:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 27 Sep 2023 23:02:22 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 27 Sep 2023 23:02:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iDl4q8NA73IJv7h9xdHLjU3cJPDEZtmuSQVF8ygw40mLQwcs9f/X0pTPLr2ZH1KywMJ92w5ZpK7LPDMRjA0qTdCGYtkpuDOoVZgT/s7io8QxaMu+kscJytS3xkAJ0R+IRrWwB6wrKkfQsHkvW3+a8jlPSPkWp0kE5NERWQadxcZgOmZFFbupb1l5X4k4y4c6KR9oAx51pIGiUNTl4dioRV7UCqsr6QM/ReyPLXWnLW7dBMaNjTNnAQFeix7OQydvVsjMsISQKaA8BuK0zlbkawgcsx6kIHcbpjCpPwbyDNjC5xPe9PvwNlV0t23zQm9GZPD2+PCMjVzSiFdx5EXgmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JyCnpW/KuduxRaPRLZaMtg1nW2P19/0ZFy2zw6kp8Vk=;
 b=hu13yUqJuwXp3xcTogZ6HlXb8Ta1mTETb1gjj2+GNWKgkeh4hDIuevCGPlP1kRfCoF9T/fuF0A0U1X5fPLTq9bT/6Cv8UKzgItNnJsfhc7WhjtfssFd8nDnlNCWjbJIvsRkBc+L52agC4F9jpnkMcoytqZc++u8oDedlz99smw3MwPZ3cOJ90kpZ2QmjplbNyoqfVOsxv0OMHJHAL79sJdNnaxw/dI0Z92kA6qAtRyshlMcFSSVXkn50Yv08OjxWOvEVESuKHzbSh0tSc55nPbCLZLEkEWyrtRGWwa55Ookf3nMR5d0mA/GkFw/5Nb9AiE0nHqYvzf/kUDv/5hlFkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by SA1PR11MB6822.namprd11.prod.outlook.com (2603:10b6:806:29f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.23; Thu, 28 Sep
 2023 06:02:16 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::b847:9728:1c20:4631]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::b847:9728:1c20:4631%5]) with mapi id 15.20.6813.017; Thu, 28 Sep 2023
 06:02:15 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: Extend rx_errors
 calculation
Thread-Index: AQHZ5V/PJ5biaFGKCE27taVD5VnFybAvwDFw
Date: Thu, 28 Sep 2023 06:02:15 +0000
Message-ID: <BN9PR11MB5354C7155E112235524FD38B80C1A@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230912092936.21875-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20230912092936.21875-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|SA1PR11MB6822:EE_
x-ms-office365-filtering-correlation-id: 741ad430-e9ba-4ea4-d15d-08dbbfe8775e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a2rlOxBLr0aYKKn50nnGWMTb+nMgReVuJfVGk/DPDMqjd0g9eHKWE3zyui0dfM+niNPL3ImWAnFGlLORmIjOffF0H7Toac9jPE6GplPdiRJ6ER0To0YeWctcAOwtN0luSrIk7OqHsPvtK1EkAftEqu2UmGHbSXeCXFdawrTOkSSDxvZowUuBBkCEkUkNgeEYEQhSGwYsIQHi6FttBtY68lzVK3qPWCWlGxcegGn6xyNZI2rgcZk9dT3XQf+/7PWtXfKSOgJBrcppPi7xfmI+y27Nd58U4Gxqut73Hho6OTunArnp3XqVBcsQtxvw71JirsnwQRHadaZFZNu1A2rWIq1LKd+mNXv1eyoQTuopYTAlkhlBlxuxSxbWdWKtQwbiMzUJZ6BjviPI7iKK8nXg/8t3f2eKqo9GlvwJzKIhZUHXqSJvTVtGyUtf8xbBYYjUvCUyLZwZOsXR3XFb4O015d6DO1VO2ZAAXBf9sZ2IMjOPBBFCbhErvIV0znPgntKCjaL4PXmHLhVJYV/Zg8WScKG55JEVfsA/FbBVId7aL8JDwlt3m3rkrnsezzV/SJb6QdJgLOg0ZKtyENTauvKEojGEa8mD+bql2X8+y8fTAaE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(396003)(346002)(39860400002)(136003)(230922051799003)(64100799003)(1800799009)(451199024)(186009)(7696005)(478600001)(6506007)(82960400001)(83380400001)(71200400001)(53546011)(26005)(122000001)(38100700002)(107886003)(966005)(38070700005)(9686003)(66556008)(110136005)(64756008)(54906003)(66476007)(66946007)(76116006)(66446008)(52536014)(316002)(55016003)(8676002)(5660300002)(2906002)(86362001)(33656002)(41300700001)(8936002)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zfHrG5pEe3g4eh0IoA+x72WrcABZ6SgEOFeZErL4lL1eSDtxbXXW+0Vnyeir?=
 =?us-ascii?Q?UGJJ28XHchJk75cbzsl4iCZIe9UA6s12CcfKceEmw9TGUDaalxbuxiL2O65f?=
 =?us-ascii?Q?EQG9WET9Xx0s+4x4AlhdwMXesipO/kfqjiGf9L6y8iGHgYOvHD3VSdojPxBj?=
 =?us-ascii?Q?OnKGvWuTuekUUOLq+Mm614JnqecYR83mymMjca17eFpqPKhU9dl6jFzUNsy7?=
 =?us-ascii?Q?UtxhV9NhQA2kL54buZYOSITChyNXD/lFwDBpwXY3I8xkBIERzcU5qSQB+KTP?=
 =?us-ascii?Q?ZMUHmkjJTy9a6I/tAe8qQ77OSXDh7o5OfyCaNWtrq7Kr6LRXy/679UBzasDA?=
 =?us-ascii?Q?IoaVlzWulgt8WYwRa+b5/17YawqTW3U/1/NklAVcbcoVTD0mI0flwdhU1OTF?=
 =?us-ascii?Q?7HLBNvsE5MA13y8aZ85esrx6P++XJW+VnWaQ5w+1Yq70XTeIZ17cr0bghvCf?=
 =?us-ascii?Q?WWHx+0Sf8QlOSU+ji8OYEFiaYaPCI66dyAxIM4Uf/fJrGxXXLYYnZD82owr1?=
 =?us-ascii?Q?O2ctI4RAQYeMNkHDcvWBM5KVsa22dYbJVLVDRMk61f+dFrtuAxlGDbKVk+2x?=
 =?us-ascii?Q?KHPgduOSYpjiw7RhZRYPk+ZXSraNaT917dBdwplsrT5lo3e2d4Z3lGH5nk18?=
 =?us-ascii?Q?/OzVYDlerE0o/xAr+f7dOBWkvwNFknJ/K3m2YnToD0J6A6d7TnOju3XXR/A1?=
 =?us-ascii?Q?hHNb7sbisLRgxSSQTQRz57/wZq03l/b9tR9BMUR0bGZi/an+Yi6l1mvpXvGG?=
 =?us-ascii?Q?jcNVMugAzEmPnUMPyGa0j/zJGSgbaT3S4TC5IiPpMphKZbItKAfaPcn+hLWd?=
 =?us-ascii?Q?I55U50+lHE8ESJ0rgehD3sCCuanDTv/6AgiaxUoUMK12rORe02f7I2ZESHiL?=
 =?us-ascii?Q?+Sroel0B5ubMGBJDet2whWRFytgl2M43UswnTa6ZzlCVxhnFmxIYnZYQ4o1W?=
 =?us-ascii?Q?5yayjB1iMU8AN51n3rQq1Noe2Ez1SXLYL7wAMQFcot/5EeZgJb8xAX2+LpzH?=
 =?us-ascii?Q?aUvKVaXqGOEUd6dRzN6qSv9/5597FH7Z4hbzWjE8RXMzlv87YoA/ugjJk+VU?=
 =?us-ascii?Q?MUkXft+Uj+AoHjhSh3apM8IWteevvzKuOJaEqEbsSHfMa5be/nqa2yzJgv0a?=
 =?us-ascii?Q?7ZR2dBVhjPIC+q+U1dEIYp6arEMDIlmkGLpcf8jyCvBQpoKVpJPM2w1BH6SP?=
 =?us-ascii?Q?qH1PK72lXPBrpBDJS4UAdmxyV4fKVB1zFXNBufSblZtUePxbzWd5gQeW84FF?=
 =?us-ascii?Q?Jfnt4LIQ/+A5sYTpKYB92C4d8EpD2qZ5NBNDiUBVTrx70MuE2YD8RFQNtxiB?=
 =?us-ascii?Q?ryOI2VJzg7vSWK3YKD8EmL1nWOJK6Pif9oYLNjxPQpBIUGhbwctCKveJv0Yv?=
 =?us-ascii?Q?UzEX9upIjJHV3BgDTuSZPDEjtQg4NU1RZkTE4+utcnTy0lbnnqSD/How49dU?=
 =?us-ascii?Q?ofqPJSxKG+BScSXsHkwGR5XWyFs42eDMvFyOtFZ9WbMcsMMbhpKy3fR9vJRh?=
 =?us-ascii?Q?GksXHSGQ5pEd1chC635nMn6HKAD9cAR/fWn4rQdwEkMsjA65s8zgFx5wv3c2?=
 =?us-ascii?Q?GFz9JIJGTYBjlWSZs7jQyXur7Rq85UerVlFUljKZ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 741ad430-e9ba-4ea4-d15d-08dbbfe8775e
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Sep 2023 06:02:15.8469 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G1FnSgra5rONMbG/QPQcTfCLg59annNhN+uA5hWPhWGAH3MvnzNboa/ZCtoJdKd6DgXMC3woJbKcTFpi78MSbZKBV93VKneEw0UMkunn1eA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6822
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695880945; x=1727416945;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2IrGcai9RW+qGOaLbxAhqX2CXIi5AeCqa6i6bXw5AuM=;
 b=B5t2xuWO8mAX4JxzQFwkcdfxJRkOD35X6krhC/rjNt8eKOEWe0mlWYI0
 XQanfvM2zvjMRHEomli5sXXErxFIsaplj3JtLJ6WoOSTJ0TbGKdKW5q7b
 MCnE5LRrWsS9goNydTBE49qIhnBBSkueO6L69wYB0eDEd6kF54nzFIHyA
 iyYhzEuB0tABynqnq3B2SKcPOgmxsJX/xQzRFn0Kg3IXmW6Kr14MKN99j
 1CVZaQSuFv1bfyEB1LRySnbVx8M0RmQmunHVj4P2ap7GUMgMU4HM1X6en
 MuytcEkx1GvtXsk5hVgv8I8GCrx91YQ1ePaHxva0oGIjAWGYeGnblc0zk
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B5t2xuWO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: Extend rx_errors
 calculation
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Jagielski,
 Jedrzej" <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jedrzej Jagielski
> Sent: Tuesday, September 12, 2023 3:00 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Jagielski, Jedrzej <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1] ixgbe: Extend rx_errors calculation
>
> Currently we are only including crcerrs (CRC Error Count) and rlec (Receive Length Error Count) in the PF netdev's rx_error counter.
> There are also other causes of Rx errors that the device supports and reports via Ethtool. Accumulate all Rx errors in the PF netdev's rx_error counter.
>
> Error counters added for:
> Illegal Byte Error, Checksum Bad, Receive [Over/Under]size, Receive Fragment and Receive Jabber.
>
> The above were added in order to align statistics with other products.
>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
>
rx_errors and rx_csum_offload_errors counters do not increment on receiving packets with bad checksum.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
