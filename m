Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 337C186E173
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Mar 2024 14:02:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9C7FB61049;
	Fri,  1 Mar 2024 13:02:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dDxRDUgN4iDY; Fri,  1 Mar 2024 13:02:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8390E61045
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709298127;
	bh=E6myxPWn0DsdmsANil4fRk9+dO78wRzSFhmTs8i05sk=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=X54GuoUdYNajuxSQq+C/LwSmbqpJeiHKYPnjNi+lTDqE+gaYiS/6CAnLETMqHHMT5
	 X4mM4qq8nGguvSI1QaPGfCGNnjVtjjGHnwYOPmvLodpAjM1xGKoNAzGxGveW23qwj7
	 257K2zAxbLpIQWmZI5JLyr0pN9ipjWFVa65IIrwQdQVcFr3rSwGqLmkTgmHCy84iKX
	 r8lH9RwpvuHWE5PwGHnc6jK01uF8Ca214PGshlXY5Aa4cYiXu+PVgpJu5yylfQ485Y
	 YU5bJ/vWEw1v73amwzUxztRPy/odBkUk0mLkJ6SOJiBHP01vUe+pUmS3EQyokaKFEz
	 a3gwoot93V9Tg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8390E61045;
	Fri,  1 Mar 2024 13:02:07 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A787F1BF2EC
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 13:02:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 922344194C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 13:02:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0t1FB3WpUWbh for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Mar 2024 13:02:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=chandanx.rout@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 30AA04193B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 30AA04193B
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 30AA04193B
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Mar 2024 13:02:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="3698086"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="3698086"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 05:01:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; 
   d="scan'208";a="8598122"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Mar 2024 05:01:53 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 1 Mar 2024 05:01:51 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 1 Mar 2024 05:01:51 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 1 Mar 2024 05:01:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lMhLAn1ShRwrS9PvbQMmjpidfkksGlAyexMDutrPV7aJT7l0dEEfThXtNXyFK3gddPVxDQFC4sDAwvmJrOI3IY0nAS+mOsDS6l16qpYdmcPRVlEF8ya8hPr4xtyJvWNInTmvEfir09jrYHKsr4+lA/UH2OZNKtWpgbIuCc1eWWXpGFFIiIXthlS95B30CoVVSvzvt2LE2xT60jfBAYL/hO9T7foJQ3SqwirZlD5AuzeQqd8W52/loDNFEIyANKqOdlFDFLQJFR/zbS66HRf7ipnQQ0AXK31IA71CVVQrrpocP/xuzWk1AweOo5LHPQ2u3CmcSv6LV1gp4DFe/AvXpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E6myxPWn0DsdmsANil4fRk9+dO78wRzSFhmTs8i05sk=;
 b=XkO2qfkuPRIQRw9nAxCk/A17o5djsx77RII6jBpIF1AWZFwOqKXVovD6N0ZorAErzevBFMLHSdSkwwYkMYMdllJlapXUJJR3l8X9lxqiO2ne+saW/Ybx3Bb+O+D+L3kTlMmThys+xwbHBSckNY3gXFGXYq9iCB6xXWv/67te3UK0UyrcMA5xh0GX73wVUV59zCbzU+HV/uHhZKHe6B8w0pn23mfkJTUY35htJL5a2BoAyn/2a2fZJ9XOl4FrpzUM9qOb9zd5KWZtJ88xu18xOPgPodmbh/+P3C2gaRBKZU8ln8D25A895nhBurnrQHLsTxBe2c6N76OEiW5PTDEvzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8313.namprd11.prod.outlook.com (2603:10b6:610:17c::15)
 by MW4PR11MB6888.namprd11.prod.outlook.com (2603:10b6:303:22d::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.12; Fri, 1 Mar
 2024 13:01:46 +0000
Received: from CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::d738:fa64:675d:8dbb]) by CH3PR11MB8313.namprd11.prod.outlook.com
 ([fe80::d738:fa64:675d:8dbb%7]) with mapi id 15.20.7362.017; Fri, 1 Mar 2024
 13:01:46 +0000
From: "Rout, ChandanX" <chandanx.rout@intel.com>
To: "Fijalkowski, Maciej" <maciej.fijalkowski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/3] ixgbe: {dis, en}able irqs
 in ixgbe_txrx_ring_{dis, en}able
Thread-Index: AQHaZEZYN+U8CZqVzUWdULwGAEEz+LEi6Czw
Date: Fri, 1 Mar 2024 13:01:46 +0000
Message-ID: <CH3PR11MB831312319FD15E1F1D839525EA5E2@CH3PR11MB8313.namprd11.prod.outlook.com>
References: <20240220214553.714243-1-maciej.fijalkowski@intel.com>
 <20240220214553.714243-2-maciej.fijalkowski@intel.com>
In-Reply-To: <20240220214553.714243-2-maciej.fijalkowski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8313:EE_|MW4PR11MB6888:EE_
x-ms-office365-filtering-correlation-id: c308b73d-d614-41fe-2ba9-08dc39efc03e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8N0+rvl/EjHUskZtCP8w3xqo+9opNzY67XFBE8sQd1iWoZdRXWBV+w6dPCOjkc93kQ38lpyA9PM680Wu3MDd4INcXYspF2HBX+8WiqGe4pu5AznZWZOQhL7x17dTQxuCTrZe2E/4TYsT5bvhiurjZbyXKiduaw4QdiA7Vo4TI+tQdwmpHHz999/h0JoOJD2g012m42tyxmouMGDACxivHYYzH44soNWiVgTEeAn3TVGIkzxQp6667jFU5R3Vch86m6tSemAPbmizrDLETiHXrWx+he7yw1HfZb2aJ7WmNWesnXHrSJZK/0/wADbQ9O2QRCxkLyXv3jith8Hbkt2JHeqxCLvhg9Oz4tpSTFeWIZbGw0uAYZPXKDZjJz7dzVc0FCAWceUEfgALY2b++b2dyNRxDlb4wOcGy8Mo+zGriQpGC3tfZLDBqC8Voa289GInVneRY/P3hYv4/Z9zcNcST+azb82wih/hwwk4mVuzx7+5CwL2uVXMEIt5J+EVHgp8gpOxSZ9XGAjqXik/XYuLl1M++o5jQog8ZPdXct05aUOghG7UT+9+IvXb2ZplHT+XnDsayAeVtnmEYcGfxNkn1vmoRb8sJwM81ahp7aEKcyy85zwIcSqKJxRaNoqioHJDy5mIMpC5Ve+DYdx44tZLgYSoBouvKAT7aifhXLX1UZ8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8313.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?oJOxPfmgR5lM5LSjLKaYmIPrkpliFaU0xuCqIXYSh04YzpARf1HOorFSSsiJ?=
 =?us-ascii?Q?UnL0xHPIEnxlwZmYwhuFwbaDRx80EGL5zrtRWoiAMwcN9fkkX0cVuevEaaEw?=
 =?us-ascii?Q?HUnos49eXCoGnfIR9PbAtzm1FefkGMVctyG0honmNXKyDev5frPgfez0xMGq?=
 =?us-ascii?Q?vTyHI2v5/2K7ffqPK/2A+6ADuNqRsThZ8KS9SaSJNfnM7SlgUnaleJn7M7IV?=
 =?us-ascii?Q?YwBRJDQY2SH1nXMknkk7AwvJu4pJO2ttRhjIYLrXYK0Q7eav2dpFgtX37Izd?=
 =?us-ascii?Q?iqS4nO1iGJMVgsjq2+5PqFAgaSpBLb2En1soqxxIfZExyjPubBdwnRMp3fPP?=
 =?us-ascii?Q?RT4U5b8yW8WqnHnodMNevprxB98Qt8BfbEOPBDujYozUOUA0pR6Xdi2rtI8Q?=
 =?us-ascii?Q?dV49CzT6FiOGqgCxO2NhLdZaDK/yNJPAF/7nELUhcYrDUZ5S+JNFzEqD78Dz?=
 =?us-ascii?Q?kc4StEs200n2LCztkhrQanNwIUk1KudVJdZnQSlFsGnM8/8vZHZwxfALyWzm?=
 =?us-ascii?Q?Y4IZ+HQvU39tpXu13T7+mxLk6umzdqJruZsAQ4pSiTKSPR+ot2f7PGfUhcMX?=
 =?us-ascii?Q?S0Bo0MycdrrDtH7rQ3GOs7KuskXA1yuHef9QiND80dzeOe1ZjiO8FS7s0eB3?=
 =?us-ascii?Q?MuewmP93+xk0tr+nxPWBMILPI6M9OO44YsKvHl7nQoQgSSz9DeimW7JYZmG7?=
 =?us-ascii?Q?Ibw5O45KbbSmjDto9Vq+iNxN6WOmbHveYY73r4zei9MijYov7hKiPziPwQ7v?=
 =?us-ascii?Q?6cqCacI06dHtIPdMUrHvRQfQaS4vuQFEuN2mgaLryNmPA5u+7eI0Nu850q+w?=
 =?us-ascii?Q?3Jub5GEKrdB06wSAb0091DK0+gilTwC0H7VYr2mUPxkNXCqiWGB+/SVZFu7O?=
 =?us-ascii?Q?R/ShAGkkI/JUgK1obux4Uo4YKRL967hxU3qwDxwLdFfVSK4PukYeZeqkfkvd?=
 =?us-ascii?Q?ANlpbiQVtVzmA8SunOdziAHoBYYfNIGEnajuI0zcm+MnPVKNL3+/QJZwP9Zn?=
 =?us-ascii?Q?3LwOxjhMDosFPpj9AFBI6jVaqq74RXmS3SI15nQETDsGet+dhWHup9fy98Ok?=
 =?us-ascii?Q?qTiowbhh59pfk+JEas5rA9jHevAZGvETeahDW+Ke+FxnGjiExYSQxZYtZOt9?=
 =?us-ascii?Q?JKsqqaxHvOXCYV8+NZcs56Hu6a7BVYUysm4eCSMuDksN+Z4hQXl2eEFTC2oP?=
 =?us-ascii?Q?bVgtPYbHvey9jr+CWBVUtJn7uNX69Ha2skEtpbhTbr+hUZhWT5rgSYtfDrMs?=
 =?us-ascii?Q?Lz6bbOyf9RAv9DZIMoVAvjp+2dvzO8A+6Qf0Y4hoyWf3YlrjWNg8cqipOxb8?=
 =?us-ascii?Q?b4pYkPn7hJKiTOGQ9zdXpB7VdKTHC5qyvcr6tySrTeT3M/PaEouHX77eqHYA?=
 =?us-ascii?Q?DCebgZt8jASSPYUtgv6LcBt48+p8ozoLwOjSo8eJKS6DAmyGae7G7URzVvys?=
 =?us-ascii?Q?WxJdVe5QjK6AfTq+tdlUJtt6usZM17A5ZBrHZ7Vvxv8VIBJkX958XHuZfPGL?=
 =?us-ascii?Q?1OwMFbVegcjf9ZjP0x7LSSlxzJVyJGAE/dpVVTFNk3Q5EcQS83ePzomWAQey?=
 =?us-ascii?Q?NILl653EokpUeiWdVms0ooJPMRntlnHSQZHMT011?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8313.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c308b73d-d614-41fe-2ba9-08dc39efc03e
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Mar 2024 13:01:46.4848 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4JQLs0X7ObA1xrERl7YEG8XaWj5plKucyiCfOiNtL+fW62I8OIHCJ1bXCZXS3atTlsElNTAaYK0IzpffM7ZpKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6888
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709298124; x=1740834124;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=E6myxPWn0DsdmsANil4fRk9+dO78wRzSFhmTs8i05sk=;
 b=OLyskgnMxXe+tb+M9hDCWqjkg9qrwnlCt5SPli+MhPnkfINSgfyDxuv8
 +ncWsu+GQ727QysA90HEwK81u/4Kehrvz+IACT8tK9rI0hki5m3ZOtj0Q
 3e4vFYS6KsmjEkD8NLPoqsEFafkJ4UIuRm5NenwNt1TxqIuc4OkF9a/aa
 NqlQkOWMtHUPYmTRdNUpWB3UYXWp5mhqA5sxZmKZ6RbthdMr5bpJSNtX1
 +Cec/8JVq70lupjmIusSQ0LJNgzV3yMKRJ8NZKamuAIAj0g1YmzdLi5n9
 Zv50U7yn/cExac0TzU6vthp5esqB/tp5iQrWBTfZ7CU3Pqj0xWcGqSaQf
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OLyskgnM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/3] ixgbe: {dis,
 en}able irqs in ixgbe_txrx_ring_{dis, en}able
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
Cc: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Pandey,
 Atul" <atul.pandey@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, Pavel Vazharov <pavel@x3me.net>,
 "Nagraj, Shravan" <shravan.nagraj@intel.com>, "Kuruvinakunnel,
 George" <george.kuruvinakunnel@intel.com>, "Karlsson, 
 Magnus" <magnus.karlsson@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Fijalkowski, Maciej
>Sent: Wednesday, February 21, 2024 3:16 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: netdev@vger.kernel.org; Fijalkowski, Maciej
><maciej.fijalkowski@intel.com>; Nguyen, Anthony L
><anthony.l.nguyen@intel.com>; Pavel Vazharov <pavel@x3me.net>; Karlsson,
>Magnus <magnus.karlsson@intel.com>
>Subject: [Intel-wired-lan] [PATCH iwl-net 1/3] ixgbe: {dis, en}able irqs i=
n
>ixgbe_txrx_ring_{dis, en}able
>
>Currently routines that are supposed to toggle state of ring pair do not t=
ake
>care of associated interrupt with queue vector that these rings belong to.=
 This
>causes funky issues such as dead interface due to irq misconfiguration, as=
 per
>Pavel's report from Closes: tag.
>
>Add a function responsible for disabling single IRQ in EIMC register and c=
all this
>as a very first thing when disabling ring pair during xsk_pool setup. For =
enable
>let's reuse ixgbe_irq_enable_queues(). Besides this, disable/enable NAPI a=
s
>first/last thing when dealing with closing or opening ring pair that xsk_p=
ool is
>being configured on.
>
>Reported-by: Pavel Vazharov <pavel@x3me.net>
>Closes:
>https://lore.kernel.org/netdev/CAJEV1ijxNyPTwASJER1bcZzS9nMoZJqfR86nu
>_3jFFVXzZQ4NA@mail.gmail.com/
>Fixes: 024aa5800f32 ("ixgbe: added Rx/Tx ring disable/enable functions")
>Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
>---
> drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 56 ++++++++++++++++---
> 1 file changed, 49 insertions(+), 7 deletions(-)
>

Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worke=
r at Intel)
