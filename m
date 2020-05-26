Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1345F1E2FE4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 26 May 2020 22:22:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AC83F87CAC;
	Tue, 26 May 2020 20:22:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sv4pO3LqEhDf; Tue, 26 May 2020 20:22:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 331E487C1A;
	Tue, 26 May 2020 20:22:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A1B4B1BF82F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:22:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 9CD628869E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:22:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6NOQzIs9YuPc for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 May 2020 20:22:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 852DD878F7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 May 2020 20:22:18 +0000 (UTC)
IronPort-SDR: TSG97HAP073/CM4qR5NNIewO/GiRlwxI8ZT6O0MNjX225KN2bUsWwlASqCJM0JzfSDyi5Hpnvl
 j6B0daymkuvQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2020 13:22:18 -0700
IronPort-SDR: kxuRHqJgQI5mpzGBf2jL5vTvQdno8oCMGHQiMMFCNnlPbMTuoKz7YHdlNLrga7Bj5y7tR6u3m+
 sF481/iOqutQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,437,1583222400"; d="scan'208";a="255529131"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga007.jf.intel.com with ESMTP; 26 May 2020 13:22:17 -0700
Received: from fmsmsx102.amr.corp.intel.com (10.18.124.200) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:22:17 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 FMSMSX102.amr.corp.intel.com (10.18.124.200) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 26 May 2020 13:22:16 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 26 May 2020 13:22:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RCNk7oQEDcDQ8F2ev0d+9tCMlOdm+6o6NnT9CjvMNUuwOSXbdUbx5DRfgH5qzZCvWDxKAzwApxh2dMRX1dHKSfVzJQIO5nWC3SxkhtVMvnuKod4kCFWPtmsJ5KrR8NJENNPxW2kWmjetwL2iD7tyidsp3wrZmavHkcfpBasnUDsTXtvi5RYarJzvkLE3J8RlfdKCGOwiKzkJHrTXAecRo+KsqvfbZedXHuhwSP4IfLoVIw1/uj7OptBL+6Gn67QaGW5pYyQMo2f1P2I2+51wUwQIbqnb+fSPcKj9PJ/rC9v/2N1O7f69oyfxL1J8aOAPrnWVm/jwG0/KcV/xDp4UxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V+8fxr6ufjdrmQA0P570GX7QKc+HIQYc//gj6Z678Co=;
 b=RyBJ3MYM3TKPQoOC1UHu842bfgd34RvXrJTfbX90I/Vh0TXgpDdZF+CiZOeiX9U+dPVl51I5D8T2xg4OJT8/5mabBEKZrz6OSdOAjscVE+4s3SrqY3XVGTL20ep6gI4OQ9ekZXknhK2qCBkX0KVg1oHu4iH67uRWleXn5PiAcd3yZE54o9SZ9YeE7JrAx3U5PYMfjtRerQkDL1x9h47zdSC7s0XxbjnfYIeMSpDRIejsX3dBUGXoAiDSyqlMcj5xtjpkTB/n53Y+vCX2JPDIRD4N7Hmq94F6+i323rkPaxIVOYO7amReqNCRVY4/KATPiG+urCZ8dF8a1gX882tfqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V+8fxr6ufjdrmQA0P570GX7QKc+HIQYc//gj6Z678Co=;
 b=G3/DgAcNpX8bNj6XaUjlvyR30JHGvC40p54wjgaaTxdr7u1P4zoNhadBFI9bJlve4nB5/Wjx6l8Mr0gMbBkTEMZyAbLAzbMljy68/1+CVuhWnmBEnSwiCEO+RWg7mXEYDdmYRIWyZOzvqgfWmUZchsQOFMYM6kKXZyuVe7GnBA4=
Received: from DM5PR11MB1659.namprd11.prod.outlook.com (2603:10b6:4:6::20) by
 DM5PR11MB1353.namprd11.prod.outlook.com (2603:10b6:3:a::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.26; Tue, 26 May 2020 20:22:15 +0000
Received: from DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66]) by DM5PR11MB1659.namprd11.prod.outlook.com
 ([fe80::b01b:8cfb:1248:ea66%9]) with mapi id 15.20.3045.016; Tue, 26 May 2020
 20:22:15 +0000
From: "Bowers, AndrewX" <andrewx.bowers@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH S44 01/14] ice: Don't allow VLAN
 stripping change when pvid set
Thread-Index: AQHWKxtc8lJMLKmChkutvV2gwsJOfKi64Fwg
Date: Tue, 26 May 2020 20:22:15 +0000
Message-ID: <DM5PR11MB16596D2504DCC206CA641E318CB00@DM5PR11MB1659.namprd11.prod.outlook.com>
References: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
In-Reply-To: <20200516004226.4795-1-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: lists.osuosl.org; dkim=none (message not signed)
 header.d=none; lists.osuosl.org; dmarc=none action=none header.from=intel.com; 
x-originating-ip: [134.134.136.215]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ba4cee1a-1b1a-4242-a4ab-08d801b27b55
x-ms-traffictypediagnostic: DM5PR11MB1353:
x-microsoft-antispam-prvs: <DM5PR11MB13534F9414FD1C5ADD51DFD28CB00@DM5PR11MB1353.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 041517DFAB
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JEciIrd/36eHH28sWoTY7OOLrhgtBPRqnk+uz/bYupdU3QBae7HXZzt34JiIiQlAH/fouEFmjUmIqZyiOXGCjAHH8JPIuJFt+TYk77ijs57xhqKGwK2jO6PgGfprnl+5hOpFFNUJf/7XE5xfoP6mCr9tH2OOVotZN/l6sDIrHJAmhjBW5L/QBAF6qcTyIiF8KKQ3NVcaIFgS/n6TKbKv0vTYdlor0j7FDP8GP5F9GhZwm2mX0HmpgPy4rTwXkONbqhx4Ojv0sengoq98tLv0MA8k5SR9iVmqOG1/cDY+AyKdyaXJYx+HuG7JX9OhTkngqrR3iw4m2TEosSntDmV9k2MDurYykKwks8LjOMVco/L4emZs7+64q1Pd5YI6mcPF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1659.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(376002)(366004)(39860400002)(396003)(346002)(8936002)(71200400001)(33656002)(4744005)(8676002)(52536014)(316002)(86362001)(478600001)(2906002)(9686003)(66446008)(64756008)(66556008)(66476007)(76116006)(66946007)(55016002)(7696005)(5660300002)(26005)(6506007)(186003)(6916009)(53546011)(168613001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: nkUZ7I6DTbnBX6olb2q79yP1wldCHUO2M87EklFcyAQ6XnGV5aiVKOpDAf9yfqepISi6RObJEUwhzkd/JT9ZtFdGIgLROsDnDWgezunXDSuEvmGctTXDSV9o09k/9A/3agFwOuZoqv/1xQpSQiK13Vjt8b5rUQ50A3SLo0+zN6oIOMW6Wz9LNmrgcY8Q8DjA4Hu8bDvIkmEPVrIWvbmD6zHr5+ritLGiOqeXVuaIzw02KsWMiX7r0K0qVx52nIVn/RmI6RcYhDB9VYol0bkxWXa7EFsJQC0WZ0WnrRmjqd/RXJpil6PIQ+j89pnYftugwWgFlmzhRm9pUu/uPQiQtPb2wvOfg28MxG44B2I28Rf4mqPR4O4Is0/LmzuoEBL+s99YOub8hcFX5RWkUW0D8buB+tsd877RkdmJ55psOv/8CAdHLAXTn+HSpw3hky1fEOyN4BwOwlDclDiqdRWJJOCx6+yhHr3c3N5wK/7aJsrI2Lam180jO9cu6NFckYfU
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ba4cee1a-1b1a-4242-a4ab-08d801b27b55
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2020 20:22:15.6772 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bD5B9NWQP7bLPycGbqlXulnOMaSjhNkF9inS3aRfXS7ThjuUsiyhtmop7Ef2UazsBUFW6K4/STzizUiSQQznhW6++9hKDQmXXZ1RLw7JAW0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1353
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH S44 01/14] ice: Don't allow VLAN
 stripping change when pvid set
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
> Sent: Friday, May 15, 2020 5:42 PM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH S44 01/14] ice: Don't allow VLAN stripping
> change when pvid set
> 
> From: Brett Creeley <brett.creeley@intel.com>
> 
> Currently, if the PVID is set in the VLAN handling section of the VSI context
> the driver still allows VLAN stripping to be enabled/disabled.
> VLAN stripping should only be modifiable when the PVID is not set. Fix this by
> preventing VLAN stripping modification when PVID is set.
> 
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_lib.c | 6 ++++++
>  1 file changed, 6 insertions(+)

Tested-by: Andrew Bowers <andrewx.bowers@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
