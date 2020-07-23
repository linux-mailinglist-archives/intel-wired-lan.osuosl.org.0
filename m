Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A8A22A479
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jul 2020 03:23:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 98E7188AE4;
	Thu, 23 Jul 2020 01:23:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N+fUHPhcKeYy; Thu, 23 Jul 2020 01:23:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A268D88B5F;
	Thu, 23 Jul 2020 01:23:34 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D47A1BF29C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:23:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 59A9386DEE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:23:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wzVTXmHnvOHK for <intel-wired-lan@lists.osuosl.org>;
 Thu, 23 Jul 2020 01:23:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2EBF086DE7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 23 Jul 2020 01:23:32 +0000 (UTC)
IronPort-SDR: 9np32lEhknhYmBy8NthsBegxCdLmTA3xUDps8xtMQYVU2pkB2KCpUbGKh17VEN7xr1zVl786oN
 boe9ltZRAdwQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9690"; a="235318269"
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="235318269"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2020 18:23:31 -0700
IronPort-SDR: e1TdXBxbsZSxnzrDPo2phfl4hvgL+HIj8kXWKG7xwCMV+TUZAYg0B29ZSi2dc/kOTyeqUlD7+4
 velCIHTqwpfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,383,1589266800"; d="scan'208";a="318835953"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga008.jf.intel.com with ESMTP; 22 Jul 2020 18:23:31 -0700
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 22 Jul 2020 18:23:31 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 22 Jul 2020 18:23:31 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jul 2020 18:23:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gLip0C2h/ne8wb5CTZ+Rv2Xv8Msmvnn3fUElKmZmibpkL02MwmOczh2D53ViOF9f3xTxGoJi4XHVAlgJ4Q/P4nJQKqYCTgjegcbtvGBe8SQIH2iio+35fFLyy6ySVmwcBqFZFTa3ZxffGlRzhk3frA37fcyj0DRlGT6KxKVUNpfB9yHU9cYGk4WOp6BMoDxTFmwheIprkTI2TBWQwuDxit28ggfbsN5qCuvrnbDCDzDVboIfV3s89DvyyVV6FAphuYBiJ8pH1qJn+L/Xvd5ybeYcfUOkmDIEnn+b9myMWOLzpZFgxXNZZaf49/+pa34SjDPOGbQltLwdEyh43Fv1hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jhBYhrehvISZMG9SWqMOQ3RB1tAKuIHVKysL/DQbWWA=;
 b=U9yMslWeLMENam88tpP2ueTeFIilATPR6g+RLLZwLSJmBkiCtRAJ3LLGxJYwihCtjMcTlzKUPTQausnLfYJshHbdb/VmO8OtlTrkauZMcUTIg807KFm2aIZrrV9fCMUdRfVPvQJNaYaMpjxVYPCpGxVYkqy3vv+LBhzHBtCau5ZVo163UbHiWZvsT6NRaeu5WdahnI/+up+/mm4iZJPPBNye+1+ZsuPQVfTlN6AAaG6dO4g1DsxZkEvJtzBtPbAPzLv0atxp2or92FtBt3RoUqZSizw5S93U4zyCaCMAfwVmWXjGh/NB88FUzZ6klYJmschTwVUsEW1rSQuoHyad8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jhBYhrehvISZMG9SWqMOQ3RB1tAKuIHVKysL/DQbWWA=;
 b=ekwdmlwOSCkxNLaY1AjZXeGz1X6q0RrlQEJzGtFsOrNHILW3bDxMnXZvUodRt3yhMHoqOV/BhG+x642ZCe5yoQu7aSsw7R8MBKgq+kKWMuV78rR1P462PG3udW/+EJZLY29og/C/T9qogQ+b9BbTC8b9JmA6bRbMED05Nwil8Dk=
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 (2603:10b6:405:51::10) by BN6PR11MB1538.namprd11.prod.outlook.com
 (2603:10b6:405:e::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.21; Thu, 23 Jul
 2020 01:23:29 +0000
Received: from BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3]) by BN6PR1101MB2145.namprd11.prod.outlook.com
 ([fe80::6cc1:1382:c39c:18e3%9]) with mapi id 15.20.3195.026; Thu, 23 Jul 2020
 01:23:29 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S49 15/15] ice: add 1G SGMII PHY type
Thread-Index: AQHWVgznVIqlQo9MFUaIYfk+U/v8g6kUc5Gg
Date: Thu, 23 Jul 2020 01:23:29 +0000
Message-ID: <BN6PR1101MB21455A794F9B7CFFC4A5228F8C760@BN6PR1101MB2145.namprd11.prod.outlook.com>
References: <20200709161614.61098-1-anthony.l.nguyen@intel.com>
 <20200709161614.61098-15-anthony.l.nguyen@intel.com>
In-Reply-To: <20200709161614.61098-15-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [71.59.183.208]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dbfa1396-d9f2-4651-d83b-08d82ea701b9
x-ms-traffictypediagnostic: BN6PR11MB1538:
x-microsoft-antispam-prvs: <BN6PR11MB15389DB94532ECB6EB27F0438C760@BN6PR11MB1538.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lGdzSpILg+EP0kw4UhwGl46TSEP080j9KIiominxI9Bl5KoqpBMRdtnV8eNjg42voUMD1KoTfXPzOtzXcTXwlsA/8E3chQt6kh2ygYO0dDZGdkGtR2W2H/0Pyej5ZlBeKw5N7sQw++3rhKCqa7DAgdo6UXrzMwN9MF4ZePwf2GlhXPnrZYpy7OrKneo80aiIoq9tZG7u+5qxUUIu5Fkg4lqBaGyVg9HnTQhucFInEhIaPy/SJjchaZwRstftlulBFYxS7mRTKicxLdE704uemaO8Ui2RXG3jCEX7r0nZUaITqTykaU5t3qrhJjarWHyJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN6PR1101MB2145.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(396003)(136003)(39860400002)(346002)(366004)(55016002)(8676002)(7696005)(5660300002)(33656002)(8936002)(9686003)(478600001)(316002)(83380400001)(66946007)(6506007)(53546011)(52536014)(86362001)(6916009)(71200400001)(2906002)(76116006)(66476007)(66556008)(186003)(26005)(66446008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: kwMGGzw96LZ2yUsbRIJmfH3iHCs9bMH/x51AR9UT1dr8yCf9pgxm5o+MvivwNWgCfRW6vnRkc9mBl/gzCD/YmumowESNOP3Iesu05LyHL9zPOgDsWa96AEJbXJzRSAXTw5deqT+ykLF6iJxFwq2+yvWqllRSMrn52iBnFdNV5r5YnOHTNlrysnQrJH0x7WR4vDfcp7HwnbvKiO1FiCClt+RCGeTzkbn/0XnYJzdyTBitQLWFZxF6kATnbBESHQPIr/pCKTf6WVdbCs7S32t047FsRfqPYuW/sU3Ehg/bQess8F6G+M/A4Ya64vPindLlSqCj2PpzJCSWQ+q+Iv9D5/2X22Vfhi1ZF5k71KqSu3yfRsCj4t/iegEQmdhHA8KTNDJGwcOD95/cxn5IaZQt3YWuX4qgJL/x0hJbEx+Zar8X8a9W4KbChuHKWulzqVXhsLeIdamDs+qK/uHplctU7uURwTujscqmN+UxCYuOCxE=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN6PR1101MB2145.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbfa1396-d9f2-4651-d83b-08d82ea701b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2020 01:23:29.4728 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YUrulyrP0egBPlw0KC78chzazHLTIAXscBJVCXwhUiSUZWPO/RhDDLoDXjv8qpsvvDQ5ga0BDVeM+wXBv3RHFgiwNBb+pe+ny5tKTRH/Wzo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1538
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S49 15/15] ice: add 1G SGMII PHY type
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
> Tony Nguyen
> Sent: Thursday, July 9, 2020 9:16 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S49 15/15] ice: add 1G SGMII PHY type
> 
> From: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> 
> There isn't a case for 1G SGMII in ice_get_media_type() so add the handling
> for it.
> 
> Also handle the special case where some direct attach cables may report that
> they support 1G SGMII, but that is erroneous since SGMII is supposed to be a
> backplane media type (between a MAC and a PHY). If the driver doesn't
> handle this special case then a user could see the 'Port' in ethtool change
> from 'Direct attach Copper' to 'Backplane' when they have forced the speed
> to 1G, but the cable hasn't changed.
> 
> Lastly, change ice_aq_get_phy_caps() to save the module_type info if the
> function was called with ICE_AQC_REPORT_TOPO_CAP. This call uses the
> media information to populate the module_type. If no media is present then
> the values in module_type will be 0.
> 
> Signed-off-by: Paul M Stillwell Jr <paul.m.stillwell.jr@intel.com>
> Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  1 +
>  drivers/net/ethernet/intel/ice/ice_common.c     | 17 ++++++++++++++---
>  2 files changed, 15 insertions(+), 3 deletions(-)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
