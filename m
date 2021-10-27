Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C6BE743D387
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Oct 2021 23:06:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 581D440594;
	Wed, 27 Oct 2021 21:06:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y_8MjtxkI-3k; Wed, 27 Oct 2021 21:06:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 55F6F4054E;
	Wed, 27 Oct 2021 21:06:31 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42D711BF34A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 21:06:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 302FC400FE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 21:06:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kM_gNK4yjT9k for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Oct 2021 21:06:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5A882400DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Oct 2021 21:06:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="253818077"
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="253818077"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 13:40:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,187,1631602800"; d="scan'208";a="573179352"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Oct 2021 13:40:00 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 13:39:59 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 13:39:59 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 13:39:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lXQ/mrQnJsPAYZYuYMZS/B8eB30sC9TH3EpgafG/txcBs2a3FDFT0z/rFrifldlZPlFGA1nsdxCCg5skdinE2StfWfKgEeNTwpuLjQxBT85diZgwyVcRrFvKVbcP4pav3O71fEWOJqZfbN3Fpm0VqsiupkDUlm4K9V9mgbt2a+1Z4SKQsBgs9wJId5KLoJEP6WKyfCbiDNrx395lAJ+s5GAt7W+26LLK9fbCLURCnbj6APDaLqqWqsgwz3yQWY8fpEH5nwcwpM6TuztlpPyNu0nKgLD3gafn/GwbSD7smIKmLNTKC0F3kfgZarYJXjlVaXsDErmWISTrdexa2uOfgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iD/gHipWiUOhaxZAdvNuWpq3EdItCr8WpKwar7YWQHU=;
 b=RDNIKf7zUNowOAgquEzNa8u8f6inPRwJklqSq02o9EG114ihhKqYFYTSOxd1368un0k2m+2YrYwrBADkSU1BVOjw8wmnZne3txcLvCW7KdMLFoRWWizzEsucpFt8vgkYCWVJuQK7sJbNRYud7yAKtyrAwkXa+tivjpYNKMe7ErptuM9gofKWiDNYmmxM656/6r3G/e2yvBQgyGQkYhRAjNlZVkqnkHPG9GYtcp/P6bM+Y28KUdHfTAT3LZLH1Mmuw6PpPYTQJcwBzM5C55zD2+Wh4o4tPeVhY9jpD3VhAD8WJmbxRkZlxRYo5hFJFMOf+KLkiR/DtO6UoWHkb99qOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iD/gHipWiUOhaxZAdvNuWpq3EdItCr8WpKwar7YWQHU=;
 b=nWIpSCcsuCqHNAgKvCCjvumajkwzSrTRXKOcUyglOpFdGhdRwaHExI5p6S/lOz1D1up4w9G4eKm3Hx5qWwmStWbwMs0Ea+sgUxgzemIcJ3dwcLL3fwmoGPwKTZEGJ3dhj7rPi+/M+NwHIdyYAG/Uvq78e+y0xiKuq0238iZ8Yf0=
Received: from MN2PR11MB4224.namprd11.prod.outlook.com (2603:10b6:208:18f::10)
 by BL3PR11MB5684.namprd11.prod.outlook.com (2603:10b6:208:33f::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.14; Wed, 27 Oct
 2021 20:39:58 +0000
Received: from MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc]) by MN2PR11MB4224.namprd11.prod.outlook.com
 ([fe80::6508:6409:bd4e:bbcc%2]) with mapi id 15.20.4649.015; Wed, 27 Oct 2021
 20:39:58 +0000
From: "Brelinski, Tony" <tony.brelinski@intel.com>
To: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1] i40e: Refactor arrow
 operator usage in i40e_update_adq_vsi_queues()
Thread-Index: AQHXXcZrmrn2vGoj0UWVcWCKclwiGavoKerw
Date: Wed, 27 Oct 2021 20:39:58 +0000
Message-ID: <MN2PR11MB42249EE0FE8F37774B0633F182859@MN2PR11MB4224.namprd11.prod.outlook.com>
References: <20210611225435.95070-1-jedrzej.jagielski@intel.com>
In-Reply-To: <20210611225435.95070-1-jedrzej.jagielski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.200.16
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 491382c7-1627-4a9d-93b0-08d99989f147
x-ms-traffictypediagnostic: BL3PR11MB5684:
x-microsoft-antispam-prvs: <BL3PR11MB5684F908314895DD5ED581CD82859@BL3PR11MB5684.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2OnrY6M5AgYEh3uG42HXmpcXTYrqo2ytVn1XaQyWrXahHDI5A0qFBbVmgRbTFsZJRs86tQqIihCvWb9A81qVPZ4agyzPLf2YzLhAHyyFnY2KDRFgzrRb5lZoNFxsF2C6cnwaOUcslN38ClStQJbfoS8q7TEfdRDhOvDDJCZCh2TZX/iZFbOZI9NqS0Ra8TVae9dS3WNyJfebb6UBjL0Fuq2TLpO0IzgT1BCmThMYNKxYtNmakSDM30wZX2wydirSv5sVW/gEUWR1SVSyhaHaWo0UZ96DdO8U4n/0ekPAAn5XUTwnMpFfrc/VZkHKn8M5ksjsZ7RMH3FOCLFsxqlheSLKtd/MFmIOe5Fjyd4RJA/hnb1YJFfSuzC9Sr9MPbebelKJ2ZhX0y1Sdy8+R2S5WV2rm3XhMmBDIYJs+8TKZ4Ycwk6EIMvEm1WD6qxebywUjfQbr7bubl9BOiqKuRmoK/jRKJx75MZjN06y4ofrVK9XzBPA9MZfYFC2HZozduT9kXYTRAasObVeojK4UxhRA7UZrhIDIRNn3gZOaf2WXrNYvevxOZHOQ3T1mb9L8VABd4j9Kj1DXk8vrJn6KShCNiwZdouGuhUfR4k+NMfZqNFGYezw0zUpMuLAHzkfBhdGiC/mVYGlHJoXaAbsUyQ4IzWIfnL1pLBOvPH1zP0ZXCgniFlxzvPYbtkuijR2htaW/h/kZz763jdntSQRX1shVQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4224.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(186003)(26005)(55016002)(52536014)(2906002)(38070700005)(5660300002)(316002)(71200400001)(4326008)(86362001)(4744005)(508600001)(122000001)(9686003)(38100700002)(33656002)(107886003)(8936002)(76116006)(8676002)(53546011)(6506007)(7696005)(82960400001)(83380400001)(66476007)(66556008)(66446008)(64756008)(110136005)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UU3n0+Z09P2jKFKTZNoQVck9nky3cNqYNeMCOF/wLP33zZygcLQjSQgkvypQ?=
 =?us-ascii?Q?y4+uK8yjXbnxhU1AvzS4y73OFRnLj6hqSsM3IxEsN08ymCgt3nxVmvXmqW2q?=
 =?us-ascii?Q?7dPXlj6n89GnkOnf6SjyLMexmsu+aZ7VRRaTCw3s50SnHcktTkL7Rhm/YLM7?=
 =?us-ascii?Q?G0Dxc/TyHzCV0aqB+ZCDrI1YimDXnYPE/eiC2kvYcZ4w36Md9FDx4vnaTq36?=
 =?us-ascii?Q?k/1D15tTTtpi4aZKl5TUK1iPsSCexq215QqDaTwMQSvMVJlwVGURqV1J5yp7?=
 =?us-ascii?Q?aQT602de9KiCvvFHm49urFlrzLYXqcbaXBkz2Dk6wMZyCnlti4CuZXsjlDu0?=
 =?us-ascii?Q?73d49utcEF9TyibSd9TyFpyvnfc56ZqqeuCSESI7JSVpL6gThk0nwlucfeMQ?=
 =?us-ascii?Q?iaLifS60i/2B189wh9ulJJkkZlMobsMz5QtHDSJm/eQ4ly1iregXk4ktv6hy?=
 =?us-ascii?Q?5DL42dYc0rlMDlD8qvTavAwApAmbwS2KVqgOKGIKHb2GGmbGKCGj8EpkY1x4?=
 =?us-ascii?Q?RrAWAIBqG8kqxz3INRoP/SWsruWMONrz+rMYMJtGupnRPMvuCqOFaOUENvP5?=
 =?us-ascii?Q?/B5fWdNO3GyhLSjh3EYpWZTwRFmWkuKMlMyMRDqvsK2NmdRgERH7Bs40Zg/q?=
 =?us-ascii?Q?Z9QftUmk5dYAyVJeiz7F/hinqpuiEsDqr2Bes4T3G2QH+C4hxveMiuRr0Ou6?=
 =?us-ascii?Q?dCrg1qBgJ4P336JI0jT0+wgovd1HCzFYQS0XZvfBxZH2COrWMwiZ6UMmUSoy?=
 =?us-ascii?Q?EuE00yM+9jGFf/jvr4CV7yYllaHpoUQ1b4cKYZCA/VV+qg+xL2eu+HoKSj6j?=
 =?us-ascii?Q?Yu8uETDwbCxNYfZ+fQ1nw3uCe6j5edCw3HVv2e025KeUmUXC4atMwHOGeISe?=
 =?us-ascii?Q?Bd65w0wogvms0YwgaLSqlNhwMADwwQewFINmFeoYf14yF5FDsXYaunM86A+U?=
 =?us-ascii?Q?Rzo0fGbmDf+YU6CC6KTnDWUXEtnhD/jaLBo1ijgiFuzYGC8JnYYL67e2DwTT?=
 =?us-ascii?Q?d29SFxjL7OSvC0qNh/lY4d1xrduX4+tyR3bAfdu3hyi4OPgzK31R7YOkfBrh?=
 =?us-ascii?Q?HN/+NAjT94EuK9XtK+bA7nsl6kApZKRXpMMczkYXyhu98sMS7Ij4pCVMCnDE?=
 =?us-ascii?Q?qErh1CFoXOqrSTnjcytm+1Y7w9etqguGV3QSw32/DIpxaBg2jEtfg0NcznnE?=
 =?us-ascii?Q?kEjOFzhq/cOq8XlVSQGL5yQmHaQgx8r0Mq6WXKoMPD4x2nevlDmb0fgQeK23?=
 =?us-ascii?Q?kYPRtDXwKX2roYJyg+Oq53z0kmHncHUJ6yAx8daMpc2QJq+YiQ0P7aBly8T/?=
 =?us-ascii?Q?4QDm/Nq98oC3lfYt6CJ0qusXMyGA8ZU8znfXNP9mlvS3K3tbcxS2z2hwZ5pA?=
 =?us-ascii?Q?A93xUoXpM3xt4i962y+NHqPM6gc4nmZCvH4sjRIspuc4H7s2Vh4V0CtXGIHB?=
 =?us-ascii?Q?f/8VyVG5049N5d35EwEXqUiiQDbSq5Wu0cID3USvkm320UjHhkpd63eMWZtf?=
 =?us-ascii?Q?WRTaBH4GzPKkEPWamND83vb/IjHOkiFe3EZLoxC5inaJji1akB/g7nVbAxES?=
 =?us-ascii?Q?d2dBzpcydF/QmZG1XEbniUEEs2vi0d6VFFC6/oaXhcjhVAbLXYtC3B7ewE0R?=
 =?us-ascii?Q?Xt4JwqoWLu73JwnnO+s4sIhxkRMus9wFmzH/FMbbKycERaFUghPIoo7O9j5+?=
 =?us-ascii?Q?GNSYUg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4224.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 491382c7-1627-4a9d-93b0-08d99989f147
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2021 20:39:58.5665 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U+NOSMIVRtqj/236XvuQhcwwMxyUo2YzKFHpvFUeqTJa5AQEozIym+YEtoZ5BT4BfSBIIs8X0XAMsi4Pjj7b6HXE/NWu6ncnaENIehcFqnE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5684
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1] i40e: Refactor arrow
 operator usage in i40e_update_adq_vsi_queues()
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jagielski, Jedrzej
> Sent: Friday, June 11, 2021 3:55 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Jagielski, Jedrzej
> <jedrzej.jagielski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next v1] i40e: Refactor arrow operator
> usage in i40e_update_adq_vsi_queues()
> 
> Use local pf & hw variables instead of multiple arrow operators.
> Move pf & hw variables initialization after checking if vsi is not NULL.
> 
> Co-developed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)

Tested-by: Tony Brelinski <tony.brelinski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
