Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B2A069684D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Feb 2023 16:40:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB85C404F8;
	Tue, 14 Feb 2023 15:40:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB85C404F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1676389251;
	bh=fmaL3J1IA3ZJrqiQIzRnttfPZrSrmEhDhUSFtC0vc34=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Q6OB7QaYOf9mpT/5k+rWUuhmJ3/fW6ioCjRzFQJxtE/PUqe32f0PcqiIclqwoeYLe
	 gCTldlkSu6iF+/QKQJldBfSCAYpsRRtoZqKSRjkmN0473Z+xanzqtE3o9y4UtW5r6H
	 mf2fecAZy4lTY2lvyhXF37zeUcU1oN9+LKNNsc9dIfyRVvFel0RC+C32uJkEi9CamF
	 HEJFTQx39GO1hO3heNUmiK5TCFpl765wus0Wnn+LviOsiXopdm2HjJDad45fS8LU0i
	 oGtfR49ZYnP+1WrEYsLd9GG869Ot3f7jxqxOcjHs1eJsGy7x1Nq9aGWYpGhjYHhxmH
	 97vFMyyYh/EPg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9NFLJIcaNmYG; Tue, 14 Feb 2023 15:40:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 47DE440382;
	Tue, 14 Feb 2023 15:40:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47DE440382
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C12F1BF852
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 15:40:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E774760F2E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 15:40:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E774760F2E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GSKreU1nneQR for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Feb 2023 15:40:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 909DC60F1C
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 909DC60F1C
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Feb 2023 15:40:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="310820924"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="310820924"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 07:40:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10621"; a="646798777"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="646798777"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 14 Feb 2023 07:40:40 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 14 Feb 2023 07:40:39 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 14 Feb 2023 07:40:39 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 14 Feb 2023 07:40:39 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 14 Feb 2023 07:40:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bcRfqpetRWGJK/xB1s4Au0wjIDbHEG8rxCPTIjnnrGLdyshAhkt5ASMmt3iYtyycWLuqX5g87g8Eet3xOtvIrkNLzK7t1685nctWmaei0e35+Q/RIxwVnEmMnmdRvdf7eX5YRcX+mDtg4L2ntboebb7rantVhBsXthmPhfzXE8zcEBDpTu84lANfjxPY+wdQyH+fk7MSeyXu6moPVtlzZXnmOWo6fp43iWqrxvKudGi9YdGhyIc8IkcLKa6FJ5h3T6pDCsvkWV/Apk4700idoUwraDBY108ng9bY9n6V46coDq6Gd/KIelG1kvDcLHs4nnDrpZTF75Ys5u45GoGiSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=42L+s9kYmj/mb1MWUlTfwbXeaBn3k74sCx8VUXNg4lE=;
 b=DskcL6vGhVbAWUbRddWTNARowopcQtY+9WSsJDiSsSL3+8P5+vDjx/vzgOLjcQjOmamHhd9jd+09SOq766FzIZ5EZhzh9cY62Seq1V/v9zS6fwwfai4EGC9f0UkoWIQM18SmhmAhaELnSVB+b7FryG7WVVcC0x9IubrvQcYNDA5d1PGmgKCBr3+o2CPvf2hwpCtI5TrOxPd17bjeNEcH4vuLZHgJMwRaEWwwCwPokk+ip+GY5818MCjcDtItzHKBDheH52x6pvTgGTHV0/Ry3Y5UaUUPZ/8TYzlLrwmOzpmlAvKLmIO8MlJSdCC8GQ51DGX+KoNojGPn2FTw4SoEPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 IA1PR11MB7917.namprd11.prod.outlook.com (2603:10b6:208:3fe::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6086.24; Tue, 14 Feb
 2023 15:40:36 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::39d8:836d:fe2c:146]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::39d8:836d:fe2c:146%6]) with mapi id 15.20.5986.019; Tue, 14 Feb 2023
 15:40:36 +0000
Date: Tue, 14 Feb 2023 16:40:23 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Arnd Bergmann <arnd@kernel.org>
Message-ID: <Y+urZ09WHJjRoYFs@boxer>
References: <20230214132002.1498163-1-arnd@kernel.org>
Content-Disposition: inline
In-Reply-To: <20230214132002.1498163-1-arnd@kernel.org>
X-ClientProxiedBy: FR0P281CA0144.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::19) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|IA1PR11MB7917:EE_
X-MS-Office365-Filtering-Correlation-Id: b3dc1d12-fe52-428d-39da-08db0ea1d121
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 11ztZrnx3WSIJHp45I2kL7UWN1laXEydbR1BdtuUZ6OydUvUE2m5ERGMQxs8MkThTAUmAFwShrhlAIuVuSLZWm5Gr3wHhsaluE10IKyDEwK4wNRWmOdNv40IE6KWKe45fqMx45/hvMce0n7wqC8JXN3oXU3hPB+R4b4vtUNVFOMknbpRwP+bzKvk5E4T1XsXCEwC5h99wJ28jZ6T1YVnvq9X0387Xq65CKbetOffpfAXyLIWaRjxSAW/qUI58qGCJzgkYDDeIZQOvoWy0b0StEG49rI4csRSQwz4V8XBbHgyKkL/DO3vlyLyfYUqGSHyJx9nKZxJy1dI8IXW4RSQEOjM7vE7WqjxaeZFzkMQw/vSqYG4pRsdujyrdfJVlpj3cnooQmvgcUQQ5ZUK9tmRVPDrkArJiUYfwnkkqsKDtHk3Dt6P7Gb0xmP6dOiL0o0CINkqI4BBbPpd6iFzpiOJWv54dl93XlTDvuW7gQqIJCqZ7+8+UzoTToJQKaU1rakC3FBlqSvsuE/GueUrybchXZtnmVY3ZQBl2sFnwhERtCkbwa++gCd6ZcvCHCvBMpzO9LrD7MpElRZK/+x88RuC+IsD9WTYZ8TP/pBBlmdJvS1PawPVenGJM6A4mAMBEWq2BoWiGeEwyD1BaSWBECWUxYyK+ONsufxZXA5c7foX8Gn24mIbUOb5rFgs5TQ4ILs9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(376002)(136003)(346002)(39860400002)(396003)(366004)(451199018)(86362001)(38100700002)(33716001)(82960400001)(4326008)(8676002)(66946007)(66476007)(54906003)(6916009)(316002)(41300700001)(66556008)(7416002)(2906002)(8936002)(5660300002)(44832011)(6486002)(83380400001)(478600001)(6666004)(26005)(6512007)(9686003)(6506007)(186003)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fTGmd6VKELLFdh8eNH1Vfzzjajx2N3tAL4kIUZShL2M5F42bbfPYWlNocFTH?=
 =?us-ascii?Q?ubQuUvN7KvPsdF5J8B4zCIBstozWiWpIZ3E6zPO9pgoa2ULvXAlz1u252+/c?=
 =?us-ascii?Q?MOSKV2gk+XJeujXYpyBJ+Bif+s39Hdyvbxm32vPtl97TuKd4W3saG0kUKwWC?=
 =?us-ascii?Q?Iv3x+FC/pQifvunX/hnx/yqDtfiYiBnW+dpgLnEV4ttFXmLcP5R0f8FLxBbF?=
 =?us-ascii?Q?96KyTFOBHJYIb6hg6JF4dhhlRtEdrd7M0aWSPorVl+O+mz8q7dDV/8o3k3kw?=
 =?us-ascii?Q?NO87I71BBgAclu8leuofLA9JTdeoXDevzQtDKz/uB9f1gYd09iwXfmN1hook?=
 =?us-ascii?Q?WglUtcR3KvcoN+d4W5pkCSo4FpPw76GtejPpBQ6MqyuVvF4XrIhKOEgxrkwj?=
 =?us-ascii?Q?+bxdjtkVaJNFqTC17vN5KLu8A+cdaQ354YSIrTa+0u9tXGJdO8HGPf5wJcpe?=
 =?us-ascii?Q?AeLtL9FQe8RIU7hQ+zx0sOT5SQ28ajfKfOgyNWo5zf+rUZ27o/9EmdaWub47?=
 =?us-ascii?Q?NDfEK00oTSMS2tc4xwKuXr8/lKSszVNvbVqmOSjNrlx96aCqBHyQ03lwlrUP?=
 =?us-ascii?Q?5BtC54J1r/BCrn1ZPWDSPZ6mrZ/E1Cv10+GCoB3SRrbKJY71DgyXNQ7kY2+O?=
 =?us-ascii?Q?J1k2WifIRqCEveogqW1GzaTigk7UV0xGD5HPPYStNVk0Vwe3B2/AdhzEA4ml?=
 =?us-ascii?Q?WzELX9NZ3YnTyJzdFuLSyl4PaP3GyLREnRBdMaHmdX3WgBE8px8j/AJf8XLZ?=
 =?us-ascii?Q?sebQ6zhEh6RaMQrzI+e0T1LXxQTsCrhEISKJlks7UuPdfWfdFq9+PySbJryp?=
 =?us-ascii?Q?ov3s7QyJIIxO24JDSMvPSPZEvtdsaBWml24m0Pi9ZoPHW4m0feyWXMtQa0EX?=
 =?us-ascii?Q?HEHkpxBYOewNoc9droSdgvq4T5D7av5wytC5a+nOX8NrP8NaI/ip7GbR6t/x?=
 =?us-ascii?Q?VSsU1TQ+E2D1Hg+t9FiGl1PflWc1nuoLLJQTU3PafJtpuDyWVvqvepm2ybuk?=
 =?us-ascii?Q?MHL+EwNT/li5YxzQPK4JpejuUq6CZ84i2Dgw/H3t/kifBaXPnBZJJsXfE8Kv?=
 =?us-ascii?Q?inDcPdS0Wuv2T4d1bo9SWjAJ5JVNApUMEuNJDXzi0exRhXwZKzoGFZOih1Tw?=
 =?us-ascii?Q?iBKsEB0GRPoyQQGKWcDGNMGsm9+itkwD2zs7I9Vlwl8s6EiDkbr2NQgcjnra?=
 =?us-ascii?Q?ZW7nJWLo7GBrdxhju4UGnZXzf53oUYR5/xd5wbhPzKPTT2Oe4Qy8vjJa7S3I?=
 =?us-ascii?Q?DwJfpi0uLGR/8uw5Bz6zhODDpUU2+nTWWRswxOHyRxXnfnPfe5V4sEun+Vvb?=
 =?us-ascii?Q?gubFgcOFpfDY4X3h+RoYU58t7GPDT9E5ZKkwn2BJg/BaH21ioH9W0lr7vnYz?=
 =?us-ascii?Q?sR+UTuOXuJ1/nbiacW7SjRpD546TyurMgoUatm7SFMppd00ZUBGR/2irM5NH?=
 =?us-ascii?Q?CH24mPz/KG+yoYQBn/IRDA4B1R6DBG+Vj2Z5s7yhPDVLOsujQIzBw5uqcQsg?=
 =?us-ascii?Q?TlKm0wex5LAp96k5669XSkFZ9eg56k3sOM8DA6A5cRNbyCODsDXiYRBLWfT7?=
 =?us-ascii?Q?xnXS7GcBTe9vZZoLt8R/aiatxocnw5YnSSLEWC2NHIZfoROoa6TAQjP/LU52?=
 =?us-ascii?Q?4S1ji0cQTYA5RU1T+2A2w7A=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b3dc1d12-fe52-428d-39da-08db0ea1d121
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2023 15:40:36.6852 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9RaHn1VWBvFAn4iW1MuetYQpJbZ/rIUfg5vz5kKwznEAXhAtpwt6ZheTWyGN6hYhtp+0Wb5yvBeSujHJb6EsYJWpOHDvzUzSZHhbrsOutg4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7917
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676389242; x=1707925242;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gUq0flszpuVmkBMs0a4AOnuWR9NJlPUKwFlJPGgsHEE=;
 b=e261rLk0LMWO87f6Z3crzDOiu34Ozp28XJOfMi7Oj/SzI5YhIJDRKzkd
 tZwQzVjm3U8AkUbdlHTfVzn89x55fr926QpIv87m8wYEU7ptUuMO24qYs
 hSuZ4sXEvROVkfSJvFI+7K+2LN3MBLU7SKlft+Cmzcu/zodxhYNbdBrYo
 E9TRyEeOdIZcNquqVQY0J8RPdl29fVM33OkzLT1w+I/KxxPCPLxOwxsdH
 PGkMnN08G0yIPI56BRMRU4kZ4Mpa9VEZSQPxsqtJvGMTy5spWvnCnlcRK
 D+UJKH6GOhYu+zkTYPIgi0pWTCqPLpQnzmT7MK6iER7wDmY8lFz09mvHu
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e261rLk0
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ethernet: ice: avoid gcc-9 integer
 overflow warning
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
Cc: Arnd Bergmann <arnd@arndb.de>, intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>, Eric
 Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Feb 14, 2023 at 02:19:49PM +0100, Arnd Bergmann wrote:
> From: Arnd Bergmann <arnd@arndb.de>
> 
> With older compilers like gcc-9, the calculation of the vlan
> priority field causes a warning from the byteswap:
> 
> In file included from drivers/net/ethernet/intel/ice/ice_tc_lib.c:4:
> drivers/net/ethernet/intel/ice/ice_tc_lib.c: In function 'ice_parse_cls_flower':
> include/uapi/linux/swab.h:15:15: error: integer overflow in expression '(int)(short unsigned int)((int)match.key-><U67c8>.<U6698>.vlan_priority << 13) & 57344 & 255' of type 'int' results in '0' [-Werror=overflow]
>    15 |  (((__u16)(x) & (__u16)0x00ffU) << 8) |   \
>       |   ~~~~~~~~~~~~^~~~~~~~~~~~~~~~~
> include/uapi/linux/swab.h:106:2: note: in expansion of macro '___constant_swab16'
>   106 |  ___constant_swab16(x) :   \
>       |  ^~~~~~~~~~~~~~~~~~
> include/uapi/linux/byteorder/little_endian.h:42:43: note: in expansion of macro '__swab16'
>    42 | #define __cpu_to_be16(x) ((__force __be16)__swab16((x)))
>       |                                           ^~~~~~~~
> include/linux/byteorder/generic.h:96:21: note: in expansion of macro '__cpu_to_be16'
>    96 | #define cpu_to_be16 __cpu_to_be16
>       |                     ^~~~~~~~~~~~~
> drivers/net/ethernet/intel/ice/ice_tc_lib.c:1458:5: note: in expansion of macro 'cpu_to_be16'
>  1458 |     cpu_to_be16((match.key->vlan_priority <<
>       |     ^~~~~~~~~~~
> 
> The code looks correct to me, so just avoid the warning by replacing
> the macro expansion with an intermediate variable.
> 
> Fixes: 34800178b302 ("ice: Add support for VLAN priority filters in switchdev")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

> ---
>  drivers/net/ethernet/intel/ice/ice_tc_lib.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ice/ice_tc_lib.c b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> index 6b48cbc049c6..e9932446185c 100644
> --- a/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> +++ b/drivers/net/ethernet/intel/ice/ice_tc_lib.c
> @@ -1453,10 +1453,9 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
>  		}
>  
>  		if (match.mask->vlan_priority) {
> +			u16 prio = (match.key->vlan_priority << VLAN_PRIO_SHIFT) & VLAN_PRIO_MASK;

nit: usually for such scoped stack var we follow the declaration with an
empty line

>  			fltr->flags |= ICE_TC_FLWR_FIELD_VLAN_PRIO;
> -			headers->vlan_hdr.vlan_prio =
> -				cpu_to_be16((match.key->vlan_priority <<
> -					     VLAN_PRIO_SHIFT) & VLAN_PRIO_MASK);
> +			headers->vlan_hdr.vlan_prio = cpu_to_be16(prio);
>  		}
>  
>  		if (match.mask->vlan_tpid)
> @@ -1487,10 +1486,9 @@ ice_parse_cls_flower(struct net_device *filter_dev, struct ice_vsi *vsi,
>  		}
>  
>  		if (match.mask->vlan_priority) {
> +			u16 prio = (match.key->vlan_priority << VLAN_PRIO_SHIFT) & VLAN_PRIO_MASK;
>  			fltr->flags |= ICE_TC_FLWR_FIELD_CVLAN_PRIO;
> -			headers->cvlan_hdr.vlan_prio =
> -				cpu_to_be16((match.key->vlan_priority <<
> -					     VLAN_PRIO_SHIFT) & VLAN_PRIO_MASK);
> +			headers->cvlan_hdr.vlan_prio = cpu_to_be16(prio);
>  		}
>  	}
>  
> -- 
> 2.39.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
