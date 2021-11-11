Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B708F44D75F
	for <lists+intel-wired-lan@lfdr.de>; Thu, 11 Nov 2021 14:38:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2D18B60B3F;
	Thu, 11 Nov 2021 13:38:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Qf023TUdQgKw; Thu, 11 Nov 2021 13:38:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3439860731;
	Thu, 11 Nov 2021 13:38:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5B29E1BF479
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 13:38:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 48A0560B3D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 13:38:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dRI1-ifTxfeO for <intel-wired-lan@lists.osuosl.org>;
 Thu, 11 Nov 2021 13:38:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mx0b-00069f02.pphosted.com (mx0b-00069f02.pphosted.com
 [205.220.177.32])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E283A60705
 for <intel-wired-lan@lists.osuosl.org>; Thu, 11 Nov 2021 13:38:03 +0000 (UTC)
Received: from pps.filterd (m0246631.ppops.net [127.0.0.1])
 by mx0b-00069f02.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1ABCN7tW008241; 
 Thu, 11 Nov 2021 13:38:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : content-type : mime-version; s=corp-2021-07-09;
 bh=mxJTpAXhrgo9fEMkAoNpQfkYrDvL0+t2B3O2lVUcKg8=;
 b=fF+rrPKrcj8Iq0LuAatPWKpz7jOfg3x2+JO36rjkwBQXo91rEPKaBHrG9+rKwUBO4FRJ
 r/QOdF0x4s5Kzz4uWzAE3ByDOkh5nnMFAJi69KQCOUAuFFnO+Qy21VTnC4Y6UHlea9gE
 rOoUM6xeIMwSLXk+CJVE43ipZk13yhzqZL5MVdCvIcTfaFnQE6CGwhJ4Cxborc5WEqpL
 ysX+x1X9+/qYAMm576WC1rC4AeqglDtR4woHILzt6vBDHsh9JBrlKA8OGplu3PwzN8ck
 4IPXK5D5QoONbYn84O/Y+odGzzEs0rclXDsTi7TJkqskq/YTeDKGdYKhiQe0wvzo4N9M VQ== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by mx0b-00069f02.pphosted.com with ESMTP id 3c880s1vvf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 11 Nov 2021 13:38:00 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.1.2/8.16.1.2) with SMTP id 1ABDUkMH101088;
 Thu, 11 Nov 2021 13:37:59 GMT
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2172.outbound.protection.outlook.com [104.47.55.172])
 by userp3020.oracle.com with ESMTP id 3c63fw9r62-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Thu, 11 Nov 2021 13:37:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WGS1C+41gSPIhCQOa3BqkFGyCIG2lBl4R/Y7RJdxJXn/QAJC5xK8RZPhARTx2z2+E87UAas03iS0WynUlDBhiBN8MKqjgDjvDMFEwDoD9j/n/O6LsXhQYMH7AM6pYO6PjtOfSZell+skvNrRE+gdclH/pEqURLyxWd17dxwyk/FaG+ddrj3D4UzYI97NkTHYul6uQDbEk356uNK6gJ3iMwg+OJ7d8QKm8KTHC7fu2Fj1m21BL/RVimh2oaZvastF+MjlTlSQYHvqVr7DlM1nfnxgNdSuPQmlqlSvwJmXK0PbGrgaYeEFWkdKKC/2pi9X44pTC2MutM+sqCOzSeYYYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mxJTpAXhrgo9fEMkAoNpQfkYrDvL0+t2B3O2lVUcKg8=;
 b=nKOJP0PoNuGnZYWOcMcNjFC1VrlJwEJt0+h3xv3u1QrT5AmIPbxIm1SWwCt14jf2iiD0UK+aADFF7zZV/oCbCJNlB9mHei+vyh7W4/lBAmgbOrR0AYGcb7/7IfNTEfsoN2a3bI8v970KbF+C9lrTjDlQxW5t0esq6cHC6Cgj9P2DdCMwJ9GVSOeUWjpteWhDJqWwHUPtjNG7aN3ZjLLBOiGjTfCiA7UqJuQYhpIsHWBj0+8mgRLhy5ODdToRUJVUJq8PFM3Wm2uOWTNPYR4KPsM/W45myhRMEyifhLVptFJAB8FjfwPnD3MNeYBhRFT4ZURJWvPXqQQK/rdxRYTmZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oracle.com; dmarc=pass action=none header.from=oracle.com;
 dkim=pass header.d=oracle.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=oracle.onmicrosoft.com; s=selector2-oracle-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mxJTpAXhrgo9fEMkAoNpQfkYrDvL0+t2B3O2lVUcKg8=;
 b=TwOnrm3sSsDfwxR7JrV/G09mElajpCJ1NeawTJtM3IZ0zNdeNdvbVy+yZ9qMbYVJEGmSmxxcGd6iSH82K5HhdgfCMGC0OpiI0t0aLid2rKYwCSDLjZ1aQRgHpt5QC6yh4R1EFD69crn8SIIwQ2UYV6dijRXIzFhtHgT77ZD9/2E=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=oracle.com;
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28) by MWHPR1001MB2367.namprd10.prod.outlook.com
 (2603:10b6:301:30::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.16; Thu, 11 Nov
 2021 13:37:57 +0000
Received: from MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9]) by MWHPR1001MB2365.namprd10.prod.outlook.com
 ([fe80::d409:11b5:5eb2:6be9%5]) with mapi id 15.20.4690.016; Thu, 11 Nov 2021
 13:37:57 +0000
Date: Thu, 11 Nov 2021 16:37:48 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: brett.creeley@intel.com
Message-ID: <20211111133748.GA22374@kili>
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ClientProxiedBy: ZR0P278CA0025.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1c::12) To MWHPR1001MB2365.namprd10.prod.outlook.com
 (2603:10b6:301:2d::28)
MIME-Version: 1.0
Received: from kili (102.222.70.114) by ZR0P278CA0025.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:1c::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.15 via Frontend
 Transport; Thu, 11 Nov 2021 13:37:55 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3cd16d41-2ea3-4c71-0ce7-08d9a51878af
X-MS-TrafficTypeDiagnostic: MWHPR1001MB2367:
X-Microsoft-Antispam-PRVS: <MWHPR1001MB236775ADFB16C6F38339359A8E949@MWHPR1001MB2367.namprd10.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BLcb4bBQYM5BnFEaGuPXvjp9Sw1k4IAdl+rSErnt/Lg/gV3FS+/DTzBDyxqS+236/s/sxYL9d/AS8vgDydGFDFhUHPOpll1T1ahGpbCHx1/5uBenLq+8QSd8Xns32sZr0n0WUbeBq7cnA9jpZsL5syZoVO9GtO4a6D5gdGGBSUERHJgUxXGsA3qFUyqziKSufsdxDuCdmxqvQo8zIn5lAoQEjDO89LaMDXUjAqdzE2KCtx9VsdaXYgV0x4jtSebS5XmSvLTzmnVCu8Nl3hy/bKf1WztQOwVeol822IYmG2Gf/rE8IJ8fNV2uyMkdjWFUcqujbebhqQbQ+sgFyQkCdeb/au2y0F/TuwWfO9qAnGvslOorJmKx8vOizo0GTdmsqCQN1/htXxvKS3NWJS/oYx4ZcC+XAumQpjFrDpCA0BjmZQ9cYK4wqN/+lR2KcNSlGmTWYtylL1SODz4Dhvgm51fL1KSzovPPigH3dHVzaJm+NpKAJsMwudsUDMMXcu+B6BQqWZ7TalrqUrP9SaQgFBLS7DiqPJLrR1zK9aQahxz367CKiQs0sBCEXUWi8UWykhbBGIiMC63Cbqf7GLBOKAXP5EvOgdqI/LF106qvDn3F6ukm6+dYHD28YNWhHx3yTGJzhnseb4QlrvgDAi5alZcfiWpJ0Jqf0bowMvCq0E2j8pdmXE3iCQXfzZ49XCRPQnh9Y0Gu8KqNR0wwSACW+Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1001MB2365.namprd10.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(4326008)(38100700002)(8936002)(52116002)(6496006)(8676002)(38350700002)(86362001)(956004)(55016002)(6916009)(66946007)(5660300002)(33656002)(66476007)(508600001)(66556008)(9576002)(316002)(9686003)(26005)(186003)(83380400001)(2906002)(1076003)(44832011)(6666004)(33716001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pZit+fqHYRC9v5UwGfjfnW0NRi17n2RiJoFRer4pTHu/PkxMoPz+flNvVa5g?=
 =?us-ascii?Q?Blc1VpXcj0XmlGDiecVXSq07pJRm2d9GEdWVvqCraGTcAaSSNWJ53la/+ENQ?=
 =?us-ascii?Q?SZGPjjD+fTbC27CFNEyj64w6hZ5PMZm7P9DRyqdTsl/4dVVgDK52OTU/Bljb?=
 =?us-ascii?Q?ahEEemMRSs9CtTLmFKcQbVjPASa0B9H7y61FTWTkFTo0gZZHY/0wxx7yeZO2?=
 =?us-ascii?Q?wOLL20HIcFVTfny49wrbPDrjrY94h84CxRECvg1M4XGCw3A9CM5W+karFbgz?=
 =?us-ascii?Q?4Mnqj7QMiFXvyldVHLt55YrAsiiHwpJoDBaqypox1E5EybMS8SEWNcIR2d1+?=
 =?us-ascii?Q?R2AUsY3nr/ER1IllP+QxPvplcWSMlZngNHRSRmuUCC4zk2f77DR/QxQylbkp?=
 =?us-ascii?Q?KZ2onxN8Fa3fz5++6wvni2LEY/fBkuQgwlobDByAe/M7usaFY6C8MdRAI5U4?=
 =?us-ascii?Q?jumywLA5CsBLmN/LIZsx9m0e1wUjNNWlkUBFuN/Mm6Zc7CwksYN45Kotle+3?=
 =?us-ascii?Q?kOJ2bTMztP7tT7921H/TTtpFXHhNx/wYPZGELWrdc8LFPjG09OASJC9NF8cw?=
 =?us-ascii?Q?Dq8ew2lT6MUqI/mQyWrpABxrYwfmjOocFgUex0XuYHSBnkT7f22EiB5OZxzy?=
 =?us-ascii?Q?HhqZyM+oRu2Gj8ixV3Rgbj7GOKFljpg7t/Eqz+a0BpM+3c3exuSi6VX37WGU?=
 =?us-ascii?Q?yLPzmnd/XldbseOiPfuUgvzAoIQLe48TsRD/xaZwTZNiv/UbBf416MrXJ6Wj?=
 =?us-ascii?Q?zNXN1PjSVtUBTQaHe0WCyc622eARiyWbwnsOC5PiLObvzd2stXF+sqESl/Pq?=
 =?us-ascii?Q?VONgdI377iuyfq6lwr+kASm+cTpVWS/nB2Yl2eQbm/XLpBa2gr+4sy2wO6wm?=
 =?us-ascii?Q?x8WWiw6JYLj/0NCjx4KaYzOpibLX3a0QyZmgRrbYlkioDGFUYlP5xbihzda2?=
 =?us-ascii?Q?BFlQqDHikVJqDaZcIBInyiZTurHLU5hjEqvbAHmOwhi3rfLETAsYArxTcuWC?=
 =?us-ascii?Q?FtTi7ULsarShD8Kyzj9L0HrZTdV0eVo3ESWG9YaU6huAPZ94+xHDQbC4UHj8?=
 =?us-ascii?Q?YzMQm5EEcz0ltW9Uf7EXd+FROvRZWNznFTkhTHk/RTZoRcB3MqULe9koAEtj?=
 =?us-ascii?Q?uDLZ0mRf+zBZ/+NOnkD05ZCtiMl0DfXSOqGXhUOwHvhxU1ifxagmLbOT/p+R?=
 =?us-ascii?Q?Q8O/Nh7yKgAVzbd+V3hNoUqcrzKTIwNadjojHazmUIC/eH+hm4gxEPZJKS6p?=
 =?us-ascii?Q?q8sZlNMp8Z1NIDCpxlcRZ0v/DC9KPKz5y6bPNJMnr4ZC9nRQe0ngBarPew7I?=
 =?us-ascii?Q?NIi7JWlMI5NwHyfyRtN/HLMg6opUlxkwkU99aDzljCXrFsItq7TDG14vt9NR?=
 =?us-ascii?Q?wL8nzHTYHp0JS15VLHRW2+gUR5SZxN+weCRB3ptFHuF9s+hfJsFEelodrRzl?=
 =?us-ascii?Q?0ALa0Hu9GUACVcWp46PF3bfsKmuH/9Ha6jZkYBKZa2Kaa7V1HOkDDbSTijM2?=
 =?us-ascii?Q?R54nG3yUK216GRtSkb4ms0KJeqvDKSmzPgxxIAq5+9TJYeVtOmPyli6AERM8?=
 =?us-ascii?Q?ue4643LWzvFC5pw6ePEJHWL2ZeOm6puoolIzs1UPChfiSWZLO8ZzxahUW9a1?=
 =?us-ascii?Q?i2T4e1T95SoqzUW+ZWzIc3dNcrpENWA7l4m1a5flBr6RPSaMB0KiNFWCx1ao?=
 =?us-ascii?Q?i5wmvruYyhdlK4/DsXz1S27H5Ec=3D?=
X-OriginatorOrg: oracle.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cd16d41-2ea3-4c71-0ce7-08d9a51878af
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1001MB2365.namprd10.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2021 13:37:57.3301 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4e2c6054-71cb-48f1-bd6c-3a9705aca71b
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fFWi4Ogd03NoWm0LaF1hFTWL9025i4ZUEbmLhL00GjDtkFmfCnftU+VU6jptJfMzttXGkzt09my0bwVr6YA4hPIa4dl8FBtOmP0VPLbnDm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1001MB2367
X-Proofpoint-Virus-Version: vendor=nai engine=6300 definitions=10164
 signatures=668683
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=999
 spamscore=0 mlxscore=0
 bulkscore=0 phishscore=0 suspectscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2111110080
X-Proofpoint-GUID: V0_wnpzKIQNbEVxJcRg0BywS5zNKo3LJ
X-Proofpoint-ORIG-GUID: V0_wnpzKIQNbEVxJcRg0BywS5zNKo3LJ
Subject: [Intel-wired-lan] [bug report] ice: Add support to print error on
 PHY FW load failure
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hello Brett Creeley,

The patch 99d407524cdf: "ice: Add support to print error on PHY FW
load failure" from Oct 13, 2021, leads to the following Smatch static
checker warning:

	drivers/net/ethernet/intel/ice/ice_main.c:956 ice_check_phy_fw_load()
	warn: duplicate check 'link_cfg_err & ((((1))) << (6))' (previous on line 948)

drivers/net/ethernet/intel/ice/ice_main.c
    946 static void ice_check_phy_fw_load(struct ice_pf *pf, u8 link_cfg_err)
    947 {
    948         if (!(link_cfg_err & ICE_AQ_LINK_EXTERNAL_PHY_LOAD_FAILURE)) {
                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
There is a check here.

    949                 clear_bit(ICE_FLAG_PHY_FW_LOAD_FAILED, pf->flags);
    950                 return;
    951         }
    952 
    953         if (test_bit(ICE_FLAG_PHY_FW_LOAD_FAILED, pf->flags))
    954                 return;
    955 
--> 956         if (link_cfg_err & ICE_AQ_LINK_EXTERNAL_PHY_LOAD_FAILURE) {
                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
We already know this condition is true.


    957                 dev_err(ice_pf_to_dev(pf), "Device failed to load the FW for the external PHY. Please download and install the latest NVM for your device and try again\n");
    958                 set_bit(ICE_FLAG_PHY_FW_LOAD_FAILED, pf->flags);
    959         }
    960 }

regards,
dan carpenter
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
