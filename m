Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EBF62D853
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Nov 2022 11:45:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78D0581F45;
	Thu, 17 Nov 2022 10:45:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78D0581F45
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668681927;
	bh=1SdENtMYbNbZ6oHkuEd7mUmzVZtc3snA90Yi+yItrOA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=o+4Ikw6Htypz2Sk+36Nvf87oj1kwy2Xrn2BjHnIniXlIrnU0eajxowpmWh/7rngKz
	 x5Z8Vqw+LlrCKQdIJVytbTCG4DFxxycFWOwpUSXM+5XA1gLs2iC0UoaC9/AuBEJi65
	 QfPQSaOCXLL+J4i+N7ipWs0a3AvTrAaYLW5bqD/QqYudY3wC3FQgq/FrjFTTo/Puz7
	 UXtSwAX2bEuDcJqE183p6Ug+KkFnd/Hah6uij1RGBE1GcOKeyBflcmgoBLnxJkUfW6
	 i/aF8NzYwjxb7++P7rIBQnossWu4pDbfSOTGJFNz0HpTlU+FcJbMzx+Hcv7DhcRFz3
	 oDt6UkHPpdbww==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fU-uH57sEV_y; Thu, 17 Nov 2022 10:45:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8400681EC5;
	Thu, 17 Nov 2022 10:45:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8400681EC5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 663991BF3A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:45:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D2A861039
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:45:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D2A861039
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J-KdqiJKOKeM for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Nov 2022 10:45:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9C4F361038
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9C4F361038
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Nov 2022 10:45:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="310449278"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="310449278"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 02:45:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="639757941"
X-IronPort-AV: E=Sophos;i="5.96,171,1665471600"; d="scan'208";a="639757941"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP; 17 Nov 2022 02:45:16 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 02:45:16 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 02:45:16 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 02:45:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MOJiZbKJYxzMRNwICfku0aIZgj9BFgcj/7J66GTtouobkgZtAJoRDgpLmHnWB/MmMuJYHthZs8k7Ko7FfHFsWTGYL3JgHS8OV2+Ouwq4S7MkewNZxSs4x7KHtCqQWPh8QyO1DrtrzfuA0r6QsA1YFBLawfIsozkDM/7XuOwYhUKH7WY8ay8YAWOU9oGCzkChhEXGsQdzyPwhICU9v97uMLItai8CNQD8rHZsg/LIGSyXGizg00qyYThWyxP1XI04r7GFqbN8OrDn0e+G0HlOWXNtc9WTngyUQPGpvksu46Kx3F9oaDHs44//17MAz6+XzjHh7rlE3uLdm7gCcU022Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nqEkg9XxzwwHFygnkv75RtQG9gGCs3Pire6aAWzLGR4=;
 b=KVYhhvBzBf5pRN5bsRZ3iNEKhlTKbj00iKtOeGyxeN8ESbgnPwQRBZ7wv/8lbn2+zMmQcB+cMvNtcmKIN2T5HUerbDfkLJxm1iWFBywJhv+A+QTsv2bFphCL8my5lz0ljrdBb44gowDVtVkAwGE0BccYdn8hyprwcAJSHsXifPgUNFosUcPB+gYxvgGkxAPWkJhO9PCJm7di0xEg5T3lwqprgBDfmgBw6PUFvL+3wAx+m/KDW2iOyAMj52BQy8bwly2gyrWaGPX3FaxESYd05iFHlSOR704rhaofKYVrqNuQfEPg4Pkha3iwea7D4hJyHPVSXkA0SEIJWPwEsP+5xQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by IA1PR11MB6123.namprd11.prod.outlook.com (2603:10b6:208:3ed::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.20; Thu, 17 Nov
 2022 10:45:14 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::86b7:ffac:438a:5f44%6]) with mapi id 15.20.5813.019; Thu, 17 Nov 2022
 10:45:13 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v2 08/15] ice: protect init
 and calibrating fields with spinlock
Thread-Index: AQHY79AQdnrw9T5u406YqRXhDXchwa5DA5pg
Date: Thu, 17 Nov 2022 10:45:13 +0000
Message-ID: <BYAPR11MB336776CE5503C2C25F7D1AD1FC069@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20221103220145.1851114-1-jacob.e.keller@intel.com>
 <20221103220145.1851114-9-jacob.e.keller@intel.com>
In-Reply-To: <20221103220145.1851114-9-jacob.e.keller@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BYAPR11MB3367:EE_|IA1PR11MB6123:EE_
x-ms-office365-filtering-correlation-id: 4ef995e3-2667-4a22-ae26-08dac888cef1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KAdzKjUpFGOTsatbUoV2gOufAZNmceccxcmoy7jqfCH6plW1yCSX3rd49AEMUpPPZV+beUY7AHQVbWBGuTvxr2wz1MluNGIA3R8BE7cIGxh00J9rIecfH9Sg6FKo9Qz/3vlxBOXg4MoNJTt429Zo27VteJQ+xTtv86g/mzyaYD3VsNvhttFERopRd3fZFftv9C0S5dVoELIJDDUcI4V58t0CnCEl5tA/kboyY+r6zU1tEWjEmbgp3PcLWnQ3X8qXB2/jIrRz6D4VAC3OOC+kY0s3+aeXgj/BCnoTfZ1njLLoU9CgCDtD1Vj67qvM9p2du2OowXaKzCgmXDoo068wNhg4Al7gHCNMSsqMpssedcf4jWJb/g3TnKxVaSnOfI2uqTN7Q0Kj8Q+QEt+VlXU9KD36urqWMb2TaT11kEbdhRFTjks2x2PLQtL7brU8ZisRet5mgpeRkugU6tWWHQ3G1e7ZR6vCAoAIQUVkemwESJP1DUAIS5rpEYj7VWKTsCltZWQryjtZnm4QW4wwIQVnmrLQBjzdWxyuTYFz3vZwGMZ4ZYvy1hXbpYSxJ8Celb05KPL32IbUhNCOaNxV5Cai/OFQosG8jtMfuGIbcEby7CaT2hHsrdhP3GS8bSJmx4ydqR5UUPzydXPM7ldeB81JhkldBwu1yt6GBxnvBhVHlSK0a9kMlUu6nLg+A+VZQOj8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(366004)(136003)(346002)(39860400002)(451199015)(71200400001)(478600001)(41300700001)(26005)(8676002)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(8936002)(52536014)(9686003)(4744005)(5660300002)(186003)(33656002)(53546011)(7696005)(6506007)(316002)(110136005)(83380400001)(2906002)(82960400001)(86362001)(55016003)(38100700002)(38070700005)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?GerdkWZ9ixP0bfEQicBnMzAxjRFoud2PwGK+nWd7f4p+A19tkS4z74mxBWta?=
 =?us-ascii?Q?SpQCA9DTrx5PzSXkOM7zNXaD8/DgmWE9z6urdUMi6j1lKk/I0j8hqJAwPimb?=
 =?us-ascii?Q?ERRvgBqG3U8MALlLA4AnkaO5HUirI8AYDX33TdNYy1pC/3jsUlT+2hqHAb2B?=
 =?us-ascii?Q?gps22UqDoPqSfDxIbszdWgRGu4uL1G5iUVzTWtKh3L+DwV6s3lxanx6UuMzp?=
 =?us-ascii?Q?DY0ksebJpbr3BMeAUV162Nny6QATDPVQkCyyMDJCs/v/7k0a5DR1w2Xcmo7q?=
 =?us-ascii?Q?A2HXoRU6wc5/4nIzsJ4B5y/SLBxqqDxK8l3PJp5WlNNfiVEkeo9P4XdqKPIv?=
 =?us-ascii?Q?auNOkbQaU2JvFC9cEfRwy9JHp4uO4S7Kh+CzKBmE8+nPgFoxxqktbD0V6nID?=
 =?us-ascii?Q?rcbdBL1r+YhJWHeoPq8BfV3s65EKm6UnPLIpQPQNotLhldMqlnUPxoM1jpSD?=
 =?us-ascii?Q?m93HdEfmqwQ6ajANsINo9xNLG+wiysc26GcBKTH8j2moRqL/wGV+IKTZkQw1?=
 =?us-ascii?Q?3xBzXv7NHQHn8uIldzGXPclrvdMxpiUqE7wtbS7hTu0UT0Csy3h8HhO+cC7S?=
 =?us-ascii?Q?DCld80IC1DFbNIbQe7swC5ssbwCgdrLo+ShHI0GXvxXmGQLE0Ukd22s0NidP?=
 =?us-ascii?Q?/wH5G32O3HZP3AAWk7D4cZxZOXf4hSSH6vVzj4d9VYY2YRvgt6rn9uYp9ZKA?=
 =?us-ascii?Q?RzgNCYFaFDPXfAxsnjTkj3EfbRRuk6G0FKy35Quu8FYUBSBNpenOam+8LjCX?=
 =?us-ascii?Q?mB/mAOHeuchGuWLan+J3SYhTKGru8kaxx9l4VWLFpbWM2zdsPzG/NcU9bLDn?=
 =?us-ascii?Q?jmbYSCCKwEdu0JDhl4BLYOdY23T2qSH9NfnyIaPmKY8YwEEnf2aqX6eCc0N5?=
 =?us-ascii?Q?B6vsXEX7QjgCtoiWSv9uVPpYCHcxMi/uNcvEfIyA1e+xFOHUQRrJ0FC9ohW1?=
 =?us-ascii?Q?23xbUU0NBOGw1iduZwx8EndzZpfdGdPpMWoRIoRvVckzulbux9DPq+6Vrzyc?=
 =?us-ascii?Q?cg4fUvM0vgPYIgI/q/WIVmv6ST+27WbzTp/0nXha/IIjui6W41+/ZfjK2pRc?=
 =?us-ascii?Q?u3v8R9d0mD2iXWy69sEhIldjMCIPJxOLtP1zM4xtGsACosuad8y01W24wSXo?=
 =?us-ascii?Q?2YsUwWJVcpXD6iaXJyHqjIc2At6vX2F0aDwr/rBiAMl4halTYvwv4Xp+V0eh?=
 =?us-ascii?Q?IRcPcM29d7JZO6MOaHRJZX4uvdGQc0snujlyyTH2dw/N498BTJ/v5d5TZQ7R?=
 =?us-ascii?Q?vR69p5TWgyOXZLV7CdCeIoS06t/GOG3FEeBNWFvDH2W+5HQl7rQjtliXquCY?=
 =?us-ascii?Q?7us4bpcyPIeIIPHGFeOTOR5XjyeJ7gbTVardS26yy8QYru+j18K83OnICq6Y?=
 =?us-ascii?Q?hD5IsFJjy3e/k3esmVP22WcjwzNVfFfAU47YBe1v4nGX5STcLV1GngqZvZZs?=
 =?us-ascii?Q?VupmkN1ayD9xL1yI6FmwSgV8oofH/iJfmX0kqvq7RAldlv7BNVGOpQfOACde?=
 =?us-ascii?Q?IGTQyyhsZ0OeiraogE/kzQULSA2AobNQ52PDplxpgIy0VtaFs1KyAAUp6hQ4?=
 =?us-ascii?Q?rmrKfZBZ46nOuVae4q0OG2mw5wmj0Tz5AuD2P9sS?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ef995e3-2667-4a22-ae26-08dac888cef1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2022 10:45:13.8774 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xIPIAHpv2BlXahX5qMKN006CkSkW8WbwoigOjWdLQykzzNZtJ4QA5Kx+CTD4u1DM+PNPeDH35MoFjAaS0mIoqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6123
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668681917; x=1700217917;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8of3kP7umCa5DxGW3IshWsErPZoSy+NKw9GtKsOqwF8=;
 b=bj2NZtZANN4BFCgaAfJVghwyO0FDlj9HCy8a96sc3Cu03gyUykUDCM/P
 wsMTat7xXtA65rkqtkXJFId0RamsNk+AYcVTIu4j7zezl0SnHLL6TQvzg
 yNdkG9ytE3AVytGHr4YR9P9fo1//QM3zwSht9g9kW+7F7+y5+bzwgLuAa
 z5xs+jH0DX5isfgChd4mfqGItMaGlcrwd7kQoQXvt+4cVuN1fy4yNiKCP
 EJrac4X8sNOaz1MKqBOe+5siKM83oKiWXHGdeFV+/r3AQwnhKBkYFDjfe
 cRxH/JgU69kokUHQY9VXZW8YjikDtKOZ97RMTPUZTZlHjayJKtgPPyDM4
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bj2NZtZA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 08/15] ice: protect init
 and calibrating fields with spinlock
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: Friday, November 4, 2022 3:32 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Subject: [Intel-wired-lan] [PATCH net-next v2 08/15] ice: protect init and
> calibrating fields with spinlock
> 
> Ensure that the init and calibrating fields of the PTP Tx timestamp tracker
> structure are only modified under the spin lock. This ensures that the
> accesses are consistent and that new timestamp requests will either begin
> completely or get ignored.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
> No changes since v1
> 
>  drivers/net/ethernet/intel/ice/ice_ptp.c | 57 +++++++++++++++++++++---
> drivers/net/ethernet/intel/ice/ice_ptp.h |  2 +-
>  2 files changed, 53 insertions(+), 6 deletions(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
