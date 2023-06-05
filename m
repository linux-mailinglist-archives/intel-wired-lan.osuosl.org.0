Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A7269722527
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 14:02:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 27B0060B9A;
	Mon,  5 Jun 2023 12:02:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27B0060B9A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685966551;
	bh=x2V1fQDsCH97smCfMaLz7OTAChh1ad18xCFU1lB7jQY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=1zpmjJDsNKN2mBSrE9074lOl9AOPpKUNrqoZdoy9jgSD/FTitzerCrryKbNgX2S0H
	 GCta5Zh+jKevoC2Hkrk0TAmcGsyHyRkiwon2DajnxyPfHKiZtsiiIsAHurHITeSNNd
	 /yJJd+NCofX6nrOxC/Z4jGfc1XbHP3RTFufkdMrWNJVKBEQtU18tN0cHW4y/q5AROJ
	 iimBC86MLdrTWuHEZU+juYJEsv2KIX+1rO81lsb1KQjHQyX66wFdVAWWa1dfggM3oF
	 PWn05S2wYz+HZSNxdT7/+BO1OqpXvOtdiyTY1zqkHxP+3g1MZgXiktyXe4Lvw4IhLf
	 G+NHl0XXZbj/A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t_FFScnNUu-M; Mon,  5 Jun 2023 12:02:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1A88460C17;
	Mon,  5 Jun 2023 12:02:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1A88460C17
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E180A1BF4DA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 12:02:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B93E18214C
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 12:02:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B93E18214C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0AMQj5quGKNd for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 12:02:23 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AE82382138
Received: from NAM02-BN1-obe.outbound.protection.outlook.com
 (mail-bn1nam02on2114.outbound.protection.outlook.com [40.107.212.114])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AE82382138
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 12:02:23 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cy9z1/OfzEC2uTNJeFMOYZ+tBsO7qL1qjHrTaijyRMIZZIqowPVBII6qLe9XNabdGVOCUy5tuSrnvAyhF4OCLs8GSOZWy4XvOOBptXoY/10/VQIrYEF5Zbv2I0Dw76HYKP/msqpnDI3gHD/FTChsTjmbwP2zPmrxwrI/JvdjPXUgvQI90vqa3gDo7xBQT8oYMyrJhdawvQHC62bwtvytFgwDSBuzPvNRiRT5lcmrRLIAMsQsARb0AxBgX3mGBQ7mvi4uJbRUqhsQBdONvq/FoELwCT/wq6VADqlEEiGZrXmfhUZsd+caWwQjYoptIvr/KRvdpJ9LDpWtZDPuD0FIpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TqtHYaZvzO14Slj6gLBGifLxraieUpaPd3lw+9r8fKE=;
 b=Agd6p40AXrVqisl7+YdeU1vUG+t5HUUIyyV1SgaAdaju7retxiElpB5PchkxVc6OGxeUmojXVX3AhMVYXMZxawZNSe+zuqFyju+MiRkXJIuyOUfpiTrZ4SzJrULbUcrjS+KJc2nGnvoQatkCGpw8ziUq7P6WxIVSQyON7Djn/cX55R+GXsenvmA/sLMPdAXgRym31a8IDPSySVP4EWRY5tqqHUMkSnXdcbkw05GnOJEa26JENqf4liBTKVMKNTQIVcx10F0sLDzwGblftvvVmPNn+dRKNxbQRPJBI3XVPn1tUym39zRyowd7KGRTfqqP9TbLFZ62qqwjn6LNhTpiFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by PH7PR13MB6169.namprd13.prod.outlook.com (2603:10b6:510:240::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.28; Mon, 5 Jun
 2023 12:02:18 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6%3]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 12:02:18 +0000
Date: Mon, 5 Jun 2023 14:02:11 +0200
From: Simon Horman <simon.horman@corigine.com>
To: "Drewek, Wojciech" <wojciech.drewek@intel.com>
Message-ID: <ZH3Ow9vXkNU44n2v@corigine.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
 <20230524122121.15012-7-wojciech.drewek@intel.com>
 <ZHyYwGf8locVmlCg@corigine.com>
 <MW4PR11MB5776D4B4B3CB687ACCBF49E4FD4DA@MW4PR11MB5776.namprd11.prod.outlook.com>
Content-Disposition: inline
In-Reply-To: <MW4PR11MB5776D4B4B3CB687ACCBF49E4FD4DA@MW4PR11MB5776.namprd11.prod.outlook.com>
X-ClientProxiedBy: AM9P250CA0014.EURP250.PROD.OUTLOOK.COM
 (2603:10a6:20b:21c::19) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|PH7PR13MB6169:EE_
X-MS-Office365-Filtering-Correlation-Id: eeef2141-a2ea-4565-1fc4-08db65bcb5da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pfpr9X+GpiiaGjQ6wPGI9BBLCVIlQaHQMvgSWeS4pc3+fueknln33jRtiuAjmLKt6THaYKaq3SbicWMIck/ZxfGJDSX8M69iURd5k4XqL53bTen1qnRlTY+itQ6CH14ReCmOlmmzKhIJNhU4zVnNy1Xv/UTR2RmGhNYTFMmsagIAore0p/D7gjXnO6NqSH7vudEy7SO4SpOuXMacYgdpuN7CbGmPW28BbB4cCYiPuOJ8esJp+AH8dxat4hPtooAdrtVzRpaztRPREutjnoqhmpLGPYbqg2irIykzkXPT941R5VRLafZVx1hZoTCgokstKaotDvJ7PJ/xXL/c9EORQdzEo3HTbnUixhDmf8XXl7vkkY/1oeGjZLaDqqCfNBljfnU6yDblZw22k5PYh+MsFs8P6h2RyBQzXEbmVcovw6kFQNYFcW7d9q7aQ3Z3YMuGCrp4i9MnxAPO58wHWDZqdYLQEaCw2GHlYu/vWgVaT2A6CcJxRmjT/j0oKgRObyd5XD8vDFXMhPpS07J8jFj0HKCBUT6S2CZup23Zmgl+S6Gl9p3msCbOZWIwd8S8Z8GH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(39840400004)(396003)(376002)(346002)(366004)(136003)(451199021)(8676002)(8936002)(478600001)(54906003)(6666004)(316002)(5660300002)(41300700001)(6486002)(186003)(53546011)(7416002)(44832011)(6916009)(4326008)(66476007)(66556008)(66946007)(6506007)(6512007)(2616005)(83380400001)(2906002)(38100700002)(86362001)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?A5lvo/4e1gqxMiXNGoHAGwo6KklOo6e0EhK1k/1KdeWhfwS7FGKcO3DcehES?=
 =?us-ascii?Q?jaeoL8TMEVT2QZNAftdxKZJKQg9BXgN5WlB04A8jnBrIaajANefVMENKgZx1?=
 =?us-ascii?Q?eCrqXMZv5/sI/HjCeiUSl76KbS1BLi20+nH0WDo7jDEoEKORecYVsRNgVeme?=
 =?us-ascii?Q?pGCWaAyV9dIcVxeDt/qES+JQWgyIhopYrceKdtggF8r03OGE9RT5zq3XiGGD?=
 =?us-ascii?Q?m4ihHBv6GtmyYyf6Ovmzu6ErRjBo4w9xyxIFPUH7qrZRUFr3HrLftTUBSy1V?=
 =?us-ascii?Q?K+GHUkYVe4v1AvRCWUq5JfU4ZMvbmNjO3ZbBiFaJpNq5qXSBWZ/Tuy8AISR4?=
 =?us-ascii?Q?MBE7UT44AbK3g+5dcVHdqSUSXsJQoqazn4oMAGgASmRWUkThnHo/oFvgBw9H?=
 =?us-ascii?Q?61tcL9wb0prCFK/p+n+MEo80mQddoijUXLJNtuS+rIClvu/XWEx9HpRGHXn7?=
 =?us-ascii?Q?r75K/1aqe09w3RSZACQtiz3josSXYJpjpB+IigRqFNS+BYfDvOBg/2gJF2pZ?=
 =?us-ascii?Q?T2xiTxshX8DsfdkKfjijhipggY/UCTS56ugOi1A6DbKhXEag0sb9RSIr4Yq/?=
 =?us-ascii?Q?hGYW/oeewVUXf+rqDHU2ypMB9Hyh6LVFGvdi/+TsckE+bSbbHTOvrFpc6MAY?=
 =?us-ascii?Q?RrdjRdRmDssFYJ6bt15w79iQxlG1enBWnK9Ftuh3ZnAk9S0s7/0y1kIYqJrn?=
 =?us-ascii?Q?kTgVVwLbiJG8EAAaE1MzSJ60r2UmsSnpakZOD+X6OGBClIWY1gEQrlytx4SX?=
 =?us-ascii?Q?5mSQeZ34Pq9+ODIcK7k4TcqaELFDZaQlVBnN3EtE7ZAds6t7PabKEOJdgMXG?=
 =?us-ascii?Q?wEY0zucvONLrY25YjJ+79Wkv5h+48mkbb7HRGFGcDXit4soALJvyRYWGU6/k?=
 =?us-ascii?Q?V9460CwdZ0oJrnA4wz3HtlXCTKYIoBK5lptKT5td8YzypGGeHAm0S/LxTa9c?=
 =?us-ascii?Q?jaOXWLAQMwnFaOeOAnYCei++Aa0YHf8tjHxsH9CqhJyVQzwpxcyFfM2C+v/6?=
 =?us-ascii?Q?ilHv5vvookKADZjbtL6SNaX3VufyOWNukzMqG6teZY6wr6MbIJlimLVigNFD?=
 =?us-ascii?Q?tCFG9R8Z2sehSg/q7vjFXP2esj0Ag+Gc5jnFum52253hZOo3jnZmi1wlmsoK?=
 =?us-ascii?Q?4c1LAxr0C9QCUT1XB1rvldPfzTwGbAA2H9NYIx7luJiDOV9FMGRuDKgNFx2V?=
 =?us-ascii?Q?qttcR/Qi9sVR5DdK2MgUotZe3TxEHIruzRAmCuA1iYwSHCDFstQyvfQpv7Qj?=
 =?us-ascii?Q?51J16+QL7t7L6p/04Esq//th1jPtLXoFhpsTUuEx7GY+1CZUYjiK6rCs245b?=
 =?us-ascii?Q?6lkqrriqN1FXCrNkpxQSKsNabelYIqwC7e4T8wPjAHzoqdk0g9DsWFB6Ojn5?=
 =?us-ascii?Q?8biHWneTBKKuAF0F6BRtlnezXvVDPgnse7K7pL2l+8Idy3sNKS6d2W2Xa5qs?=
 =?us-ascii?Q?e97vYAg1udYWpy7bbc2L3v5kffg1XyMufENHKF4EOQuD7rYmxo7QSNgQWsGd?=
 =?us-ascii?Q?P2ZTF0pDbDgPkNxg+T2uySUjyul7hs+CpyFkPCUGuQ9ivQO9nlCCIaLQXb5n?=
 =?us-ascii?Q?IOru/esOJArc1p2gJZGzNQpSPJpFtvGOLv9ONyd2RRWpmoMn+mfY/mszaF+H?=
 =?us-ascii?Q?zB5ZUjLu6n3npp45WSLjTvtnCVzU4b09C73uEFlLxuahuy0iwriMQOaDnMSP?=
 =?us-ascii?Q?0aciag=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eeef2141-a2ea-4565-1fc4-08db65bcb5da
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2023 12:02:18.3895 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qp3yTim1/rfA5VJGNH4ohQX150lBKVzM6KpX3RATJ5F5dyNx36OF6AmWyw5iXd7JakR53/psQdR6W5rkgA0xdM7cNSI8R3OA3N53zmpkZ7g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR13MB6169
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TqtHYaZvzO14Slj6gLBGifLxraieUpaPd3lw+9r8fKE=;
 b=IDwrgH+eERgPsn2Gstjr6CBKcstJmh0ZSzINYPoNm8EzE29KFHatp1gEotbdOsFl8R61/NGEPxcU9eFKv0w3K8uAMU2hdYaT70eO7EVJcHkSnKfwLBEBMC7+7hPBygbR4E0wvYq2Yv83IWGkSYHtEJxK66H3ZJWkTo6QJj7pUPg=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=IDwrgH+e
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 06/13] ice: Implement
 basic eswitch bridge setup
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
Cc: "pmenzel@molgen.mpg.de" <pmenzel@molgen.mpg.de>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, Jun 05, 2023 at 10:47:09AM +0000, Drewek, Wojciech wrote:
> 
> 
> > -----Original Message-----
> > From: Simon Horman <simon.horman@corigine.com>
> > Sent: niedziela, 4 czerwca 2023 15:59
> > To: Drewek, Wojciech <wojciech.drewek@intel.com>
> > Cc: intel-wired-lan@lists.osuosl.org; netdev@vger.kernel.org; Lobakin, Aleksander <aleksander.lobakin@intel.com>; Ertman, David M
> > <david.m.ertman@intel.com>; michal.swiatkowski@linux.intel.com; marcin.szycik@linux.intel.com; Chmielewski, Pawel
> > <pawel.chmielewski@intel.com>; Samudrala, Sridhar <sridhar.samudrala@intel.com>; pmenzel@molgen.mpg.de;
> > dan.carpenter@linaro.org
> > Subject: Re: [PATCH iwl-next v4 06/13] ice: Implement basic eswitch bridge setup
> > 
> > On Wed, May 24, 2023 at 02:21:14PM +0200, Wojciech Drewek wrote:
> > > With this patch, ice driver is able to track if the port
> > > representors or uplink port were added to the linux bridge in
> > > switchdev mode. Listen for NETDEV_CHANGEUPPER events in order to
> > > detect this. ice_esw_br data structure reflects the linux bridge
> > > and stores all the ports of the bridge (ice_esw_br_port) in
> > > xarray, it's created when the first port is added to the bridge and
> > > freed once the last port is removed. Note that only one bridge is
> > > supported per eswitch.
> > >
> > > Bridge port (ice_esw_br_port) can be either a VF port representor
> > > port or uplink port (ice_esw_br_port_type). In both cases bridge port
> > > holds a reference to the VSI, VF's VSI in case of the PR and uplink
> > > VSI in case of the uplink. VSI's index is used as an index to the
> > > xarray in which ports are stored.
> > >
> > > Add a check which prevents configuring switchdev mode if uplink is
> > > already added to any bridge. This is needed because we need to listen
> > > for NETDEV_CHANGEUPPER events to record if the uplink was added to
> > > the bridge. Netdevice notifier is registered after eswitch mode
> > > is changed top switchdev.
> > 
> > Hi Wojciech,
> > 
> > Does the uplink here model both a physical port and the PF link between the
> > host and the NIC?  If so, then I think this is ok.
> > 
> > I mention this because I am more familiar with a model where these are
> > separated, in which case I think it would probably be an uplink representor
> > that is added to the bridge. And I want to make sure make sure that I
> > understand the model used here correctly.
> 
> In our design we don't have separate uplink rpresentor. PF netdev serves as uplink
> repr once the eswitch mode is changed to switchdev.

Understood. In that case I think this patch looks good.

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
