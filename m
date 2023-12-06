Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3348C8078C3
	for <lists+intel-wired-lan@lfdr.de>; Wed,  6 Dec 2023 20:40:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A55CF60BC0;
	Wed,  6 Dec 2023 19:39:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A55CF60BC0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701891599;
	bh=TCM6m84+EJmMAHi7JIeAXZZ7MM3zSCsDDZmEKZR6cD8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=va3wABoaeusbt2Eu4LTSLPprCwwPqy/e97H7OsG3PLpfRXS8ZmfChVLnYhH5incZ5
	 1u/pHgIX5dT4zGeZKjJWCO2kw2PFVkiwawfJ3pxKMQhVxrCP5amxOgb2izuNtGbxxg
	 ZdRmHf/lBD3g8QMZViLn7J/E13gph9X+qs1gGLmPzDZaOBcZ5uMRm72fYIqprtLsg9
	 MYBGsBoJ2EcgXKEd0nYWp38Quswv6SLbagB5QT8+p1bJLd35dg+rLpSmsgtd8jnzd9
	 EV2/hExhRbsEFNv0RYZ36MAjoMHHRRumgHQodUKs4Uqspd+JCq2aF+T8+1yBs/MP3K
	 QOdO+49AGU2Nw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6aVUebW6-gPz; Wed,  6 Dec 2023 19:39:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6098C60B5D;
	Wed,  6 Dec 2023 19:39:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6098C60B5D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C83C1BF343
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 19:39:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E789460B5D
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 19:39:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E789460B5D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u0Qoh2ac93Nr for <intel-wired-lan@lists.osuosl.org>;
 Wed,  6 Dec 2023 19:39:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2922D60AD4
 for <intel-wired-lan@lists.osuosl.org>; Wed,  6 Dec 2023 19:39:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2922D60AD4
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="374289588"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="374289588"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2023 11:39:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10916"; a="721197429"
X-IronPort-AV: E=Sophos;i="6.04,256,1695711600"; d="scan'208";a="721197429"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Dec 2023 11:39:51 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Dec 2023 11:39:50 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Dec 2023 11:39:50 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Dec 2023 11:39:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MglPkjdWo1rE8pufMuc5rM3w5EfYRMPFVztktkMvO1Qh7lDzHg9FI6nC6qIqo1PVe7Vlf+7qYjxfD/mRjyHWvvOVtbr8yl5ygNnSXp3mbqngk/m+k1yrDXDytowG1Uq/usaZp+uPOyvWzMS9FRv2NVBspWSHswxjNBY/JR0JNDQD5KKWWfU32BVgsghAD8LHLC3+yLQWg+SfmLQWbNXXW7Z+uRhaTiozHYZy5NQypgoKxXxAf1EYkuUN2fRsh+bmgg/89NAtIya8DnougTcEd/PWPOAI87Nk3ErDA+LuLM6XBGBnVl0/avIlIGJLyLI8z2tZqKcbIkflH2yXadK72Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rghNZYCHnGEyulLBlBMWvpAspekMl7/E679t1N4F7m8=;
 b=VGEP/XvMdoHToWmUDDUkAxnYPRgl9ku7RTEPHtrC4XL2yZZt4wFfh0wRH0JM1LZi3B4Xx677Vi3esUeEuaCWQNBOAKhEHJiLvh7yW0313q6FHCZ/9d//mQla+B/3ORD/k6BWeMogymrJmMb4C9GzL52VhrJDbbY022mBolCogM7/GSsgje5Cyhpe2kqDaX0sILOn2TyOYZhX0wFceQeU61V3n4eWHDs85oni+LgHHoerIiQSF0Kx6BN4e8et4k9o/nfahuHxgMD1Y3evo7FP4twCphOMqO/JaQBptx4PqLxQStcVk+JYr16Iv9vqxTUDVwMiuKbD8OrLe8UtrIfGIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.25; Wed, 6 Dec
 2023 19:39:46 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::1498:c32d:2d2:975c%5]) with mapi id 15.20.7046.034; Wed, 6 Dec 2023
 19:39:46 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Rao, Ranganatha" <ranganatha.rao@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net, v2] iavf: Fix iavf_shutdown to
 call iavf_remove instead iavf_close
Thread-Index: AQHaIvTM2xAaEkqhRkSPuxxcbo/xpLCcse3g
Date: Wed, 6 Dec 2023 19:39:46 +0000
Message-ID: <BL0PR11MB3521B3E9C6784B5124B0074F8F84A@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20231129153526.57912-1-ranganatha.rao@intel.com>
In-Reply-To: <20231129153526.57912-1-ranganatha.rao@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|PH8PR11MB6753:EE_
x-ms-office365-filtering-correlation-id: afc4a788-6849-46e8-a0c4-08dbf6931a17
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: j0i1wsj4kssja1nu8EyYkG1FM5uBd007+xuPBBmgjwlaC0xuRiwkUxa7VVYu/XKgf+g9zDJVn7ZAtD+mcB7AOadEh+BQnaBvd7AyZ0z7f/hOlnvcwhyu/ej3igOEofYfBLH+KwTldrIhL37yN6usNLNdQCceG5gBZ3fKrlYuQDlGxDmqiXuEBBHDskNyREzDH7zr1H2cVgDc5rp/uA/LgHsgDmlS/snvtac2reUs4dw6TArJ3KYVHUzHD7SWsdYtQGTIi2lBFMs97+x1pPbeYaG9HG8CcHBtUj6WRmKAauZO1w/F2wH4TVfZySt13ccal6T63QLqUo5aU9YPGthSM7IWHRnaN918pfg5EAdiLq4eZETAW3/5L6bCEorqdphk6hwwL7i9Un7BrqVwcTim+PsV6sXZ4fX11tNW0LghYvZAFdLWE3ENyqSDcSuf8B4Wmlxqt1R39H6Dz3h6nCowaaIzBzMoA290WnTrf+lHsYKN62blfUbnJl4aSmj+lIm/RdSsA4gWO08TlXZmZInwzgOHFQ2TauBKBwXnbqWKS9WsqofzYLdZ/OGD55iDz15hnt3sGZrEx2uU62M7HCzXlNjM7VgDY4LSIV5daZvun3IZkQJjP2MuXQufANoqhqfQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(376002)(136003)(346002)(396003)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(76116006)(9686003)(83380400001)(26005)(66556008)(66946007)(66476007)(54906003)(64756008)(66446008)(110136005)(316002)(478600001)(7696005)(53546011)(6506007)(38070700009)(5660300002)(71200400001)(33656002)(55016003)(122000001)(38100700002)(82960400001)(2906002)(86362001)(52536014)(41300700001)(4326008)(8676002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?8Ui3j1C4DtKT8EJYnG9UavFe3W76y5SJ2QWfuYyge1XroRhiBAE7ZPRJUMk3?=
 =?us-ascii?Q?eKxiKZjFV5Yb4feGKTBgQ0E3pr8OrmnMzchSBwNdZm0JTddQ1kNVfUlNlY+c?=
 =?us-ascii?Q?+YtzLzTLJn+w5DkNoFNL5irOpgvA5qrL/tt1yHQ39oZuTjkEnAMeMPt+nGlm?=
 =?us-ascii?Q?zouStND+LhzH2Zxqz+iNV7d5H3UOvrILwrpkhKjTC3ABSmkbuD1aPyVWwWQS?=
 =?us-ascii?Q?eRHRAHQ+nVxNd+IbghZueyChLPh8SkWVBO8chlAxKlf5tH9332GqvK+A0Unj?=
 =?us-ascii?Q?zypt8flXdX39Sdeo2DKD3fkCGahMKmVYeMUzQoaKDmf/0ZFFTw13HbPj1lfo?=
 =?us-ascii?Q?YYXxkhCXi5Owr4M2S8N5vnnANB9P8R1WR4K9uzkJVPHUnJrr9eswcqZhX4Mo?=
 =?us-ascii?Q?/a3F6Dh+/NMvws1eEFiBGR+WxBYrGgoD7Kx55KNDIShP1khX8En3qeKvFq6y?=
 =?us-ascii?Q?+lsvWmXHi6lGng8ayg90nbz/967+s+JVFUUd4FZ3Y8VkUlYmI10bOHA4Yqb/?=
 =?us-ascii?Q?i9XjswBjbm5gI7inQ0jO/LoavhAXY+dxTYrj2XL3dkxLWxiFg05imd8iopX7?=
 =?us-ascii?Q?/pHGTzRFuEZkqC8Z1LLTAjaAkjUE5Wz/IdJ8yjku0xMydhNWCLNuJo6/o3+B?=
 =?us-ascii?Q?frWU9CjLbwMTnQoTqf0XF6uedzeKFKlKuRc2N8ZOTiseRvBIwllOUmuojsZl?=
 =?us-ascii?Q?+/OlAxWo6YIMBUCQ7iHxkuZ+oDPGMO1fh3ZpRwG6raL14UJwCKsro3fBY3ru?=
 =?us-ascii?Q?xQ5J0hLPF0DnHyyDeEXykIXwf3gPYEX5e0AL/KdWgD0DGfnZ8niQBxb399Hu?=
 =?us-ascii?Q?4GLT6wB971O9Y8tUCbXSSBdm5HOt/HZkkiPJBTmJUmbzx1cQIgIGMB41p+Df?=
 =?us-ascii?Q?rz6pJPq2kF3UiHofMjVIl/nb31vzyk3XPMyXDT7beZ18Jd2UfwoXEPA946fz?=
 =?us-ascii?Q?3ix5y5zBJmQIegvXtghyClvmcyw21pP1rYf0X7Of+cSPgtfBLG/rdpOl6fqO?=
 =?us-ascii?Q?N26Kh+N3C9vjdZm6FcD5bx7/OvMYXj+d8wcwfpyr9yNJ/wYsm9Pz7BtAlsqQ?=
 =?us-ascii?Q?tntlWLQY2QNZlLxLfenk6XNjucLvZlWQ6cOYuUI0Wrb4cBOsCy6YAjFntVnC?=
 =?us-ascii?Q?vs/nK60/GOJUYkVCf75es31ymuMf8wVA3of7qN4no/wYjfjXIef4p7UbMOlb?=
 =?us-ascii?Q?SHJvfUti3xI7ZgoOUW7rEmKceCLHuS41cKeYwm46Ei6a8LFK2YNDIkp8YleU?=
 =?us-ascii?Q?HPZDfn58zicmg+/4/UugjlC43qCTntJKIKN1UVwPFnnC5TUEYRuBmhURi0Jb?=
 =?us-ascii?Q?qzyZ4Hzj38CJfbC7/4yxKaNTHhVxRv8itJe5/uUoi9iYDNZEVth/p5J7Tmqr?=
 =?us-ascii?Q?S3XkajjXQXsVSnAzY4AuTi3NjKKrpqSOBgkW8lQp9EKFSTeQ+KpiGga4eFA+?=
 =?us-ascii?Q?1/TPCZSkqA0ODwWEymhR0GuFC50B4oEBjd7+rGz8dcJxLPN7w3zn6Pb9g06b?=
 =?us-ascii?Q?uO8aKe3yTIcpSJu0fyxfkWS9QwBaMLXnd5jV5UWTqlnJew5EZSWVT7QWeiTf?=
 =?us-ascii?Q?KXSoRYvWvpn8d4x0RcNZyAEh1DrkeH3G00sD3ekMCPCzICxPcH0YEB6Y/tF8?=
 =?us-ascii?Q?5Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afc4a788-6849-46e8-a0c4-08dbf6931a17
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Dec 2023 19:39:46.1078 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6uK1cOLTZYUrflFKNAROkn5p6VdmsfKBe/xf//+nJ+bR5rrW2XjovQlEle86E3G6QE0bVMjhWFx38r7JKVGWFPHfmZiVXCCv5bkmJz1VZdE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6753
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701891592; x=1733427592;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=/xmzw9e9Hx3LPzOESVE1FSeSBVtYqjlHmaM1rAFR9RE=;
 b=QstXqCvorB9lzxUP8vrH4DptBTTtoktc73huP9hmBsWIua/lvXRUqwTj
 FoIO9YgU6Tki+8Z1aSnzF9CL26rAHDW9W/Tk5/qE2mYKsP4oys0Lkabri
 IwN8rS+8zrZeDouvxCeEIdxhem6PZOAbuBXzi7dBt28VZpkYxUrthH3dH
 BLZfnjpJEIk/53l+GbJ7vAt2EJwZJPqWNgh3kFEb9ORfoT9yGt4ad0ElF
 2vjIvqiBDGB0wvnQ9rtlJ78kt5Y8o0qSQqcB0+ypv6ZZa7J/EMNzMt0eU
 ASsfpBtyJ+wrAFsQ+IrwSyNTrXd/acO8ypdrl/goJfP6giuHHhL5QWoh6
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QstXqCvo
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net,
 v2] iavf: Fix iavf_shutdown to call iavf_remove instead iavf_close
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
Cc: "Laba, SlawomirX" <slawomirx.laba@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Zaki,
 Ahmed" <ahmed.zaki@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Rao,
 Ranganatha" <ranganatha.rao@intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Ranganatha Rao
> Sent: Wednesday, November 29, 2023 4:35 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Laba, SlawomirX <slawomirx.laba@intel.com>; netdev@vger.kernel.org;
> Brandeburg, Jesse <jesse.brandeburg@intel.com>; Zaki, Ahmed
> <ahmed.zaki@intel.com>; Rao, Ranganatha <ranganatha.rao@intel.com>;
> Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net, v2] iavf: Fix iavf_shutdown to call
> iavf_remove instead iavf_close
> 
> From: Slawomir Laba <slawomirx.laba@intel.com>
> 
> Make the flow for pci shutdown be the same to the pci remove.
> 
> iavf_shutdown was implementing an incomplete version of iavf_remove. It
> misses several calls to the kernel like iavf_free_misc_irq,
> iavf_reset_interrupt_capability, iounmap that might break the system on
> reboot or hibernation.
> 
> Implement the call of iavf_remove directly in iavf_shutdown to close this gap.
> 
> Fixes below error messages (dmesg) during shutdown stress tests -
> [685814.900917] ice 0000:88:00.0: MAC 02:d0:5f:82:43:5d does not exist
> for  VF 0 [685814.900928] ice 0000:88:00.0: MAC 33:33:00:00:00:01 does
> not exist for VF 0
> 
> Reproduction:
> 
> 1. Create one VF interface:
> echo 1 > /sys/class/net/<interface_name>/device/sriov_numvfs
> 
> 2. Run live dmesg on the host:
> dmesg -wH
> 
> 3. On SUT, script below steps into vf_namespace_assignment.sh
> 
> <#!/bin/sh> // Remove <>. Git removes # line if=<VF name> (edit this per VF
> name)
> loop=0
> 
> while true; do
> 
> echo test round $loop
> let loop++
> 
> ip netns add ns$loop
> ip link set dev $if up
> ip link set dev $if netns ns$loop
> ip netns exec ns$loop ip link set dev $if up ip netns exec ns$loop ip link set dev
> $if netns 1 ip netns delete ns$loop
> 
> done
> 
> 4. Run the script for at least 1000 iterations on SUT:
> ./vf_namespace_assignment.sh
> 
> Expected result:
> No errors in dmesg.
> 
> Fixes: 129cf89e5856 ("iavf: rename functions and structs to new name")
> Signed-off-by: Slawomir Laba <slawomirx.laba@intel.com>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Ahmed Zaki <ahmed.zaki@intel.com>
> Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> Co-authored-by: Ranganatha Rao <ranganatha.rao@intel.com>
> Signed-off-by: Ranganatha Rao <ranganatha.rao@intel.com>
> 
> ---
> v2: Add reproduction steps in commit log
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 72 ++++++---------------
>  1 file changed, 21 insertions(+), 51 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index c862ebcd2e39..3c177dcd3b38 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
