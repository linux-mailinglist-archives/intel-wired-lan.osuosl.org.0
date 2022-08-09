Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B72758E2C9
	for <lists+intel-wired-lan@lfdr.de>; Wed, 10 Aug 2022 00:15:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 96F9740912;
	Tue,  9 Aug 2022 22:15:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 96F9740912
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1660083323;
	bh=Bud5GBHpyFcPpqt/sGKj6HtiXpDz+3n+8o2CLdop4X8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Vrxb8B6yTVY99bzraqpU7+dByQMBJumkoAe9uMqhUCXoKPx+1b9Wk8DFhHIQpxXBL
	 WQreTwVI4Erq4s8tXJVD6Je/mfy6cr9aN7Dgw2vHjwsvsKZgv6jIfAUB/REz3BQ5ES
	 RXDvd7gdCASEyt9fHcbbaPC+s6mQ//D7oY/wVJp/pmEhkFRj7DeKT5PCbaWMhQk2fP
	 /8ieQW4jzgYOg7tw+cd0/GUYvsKzCGhy9oa3+OnpdFn1enhkH0ESGM+T+DR0ycuZ8H
	 +tzCvibZDz5a5cvPKI0u+8IBR5tF07QwVwnPcgAXgcEuPww+O8xy5iVO1yo6YFvh3T
	 QWqfwygFENUvw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yHXcQttUJ-sK; Tue,  9 Aug 2022 22:15:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EF029405AE;
	Tue,  9 Aug 2022 22:15:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EF029405AE
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 362DA1BF5A5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 22:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 19A8D60E38
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 22:15:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19A8D60E38
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HMFVFMoHxfKb for <intel-wired-lan@lists.osuosl.org>;
 Tue,  9 Aug 2022 22:15:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD82560E33
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CD82560E33
 for <intel-wired-lan@lists.osuosl.org>; Tue,  9 Aug 2022 22:15:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="377237252"
X-IronPort-AV: E=Sophos;i="5.93,225,1654585200"; d="scan'208";a="377237252"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 15:15:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,225,1654585200"; d="scan'208";a="604912507"
Received: from unknown (HELO anguy11-linux.jf.intel.com) ([10.166.241.12])
 by orsmga002.jf.intel.com with ESMTP; 09 Aug 2022 15:15:13 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  9 Aug 2022 15:15:13 -0700
Message-Id: <20220809221513.85276-1-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660083314; x=1691619314;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RoOWLMA5NpNujOslZ3XkY7I09raHH1ltYwyrMOOrixM=;
 b=f/KBZ4z1XqqvQyOPdaatvY8Gy+6EGziiirHjwxCr2fO2g3ZR7Udka69C
 zg55R1PXClPUv8DjKOEdRYZecjbkaTtwBYh89+5XeFODgqYH1RMWtrv8E
 LWJ02u2sxvuCfoABVb6FqUDtuTaLw42wEnwCyFHY3Jib6LBsbbCz2bdpe
 swaX4ibAD2qnnIvYShXvUiWBUaBLwbK152KhzgJzA/Enq1I4R5KqUIeRW
 FsrOoeC4mtsNfKnZxYJRdkBvGA9WMUy2E+5qTxI2e4YUGS94Td5ppLgcV
 JRoVGOTBO2I5vZ1ff2nERkZP9lKuoxAy4LeepWoOWayEPLgH2yHSMmJHj
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f/KBZ4z1
Subject: [Intel-wired-lan] [linux-firmware PATCH] ice: Update package to
 1.3.30.0
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

Update package file and WHENCE entry to 1.3.30.0.

Changes include:
 - Selectable Tx Scheduler Topology support
 - Flow Director support on multicast packets

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 WHENCE                                        |   4 ++--
 .../{ice-1.3.28.0.pkg => ice-1.3.30.0.pkg}    | Bin 684408 -> 692660 bytes
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename intel/ice/ddp/{ice-1.3.28.0.pkg => ice-1.3.30.0.pkg} (97%)

diff --git a/WHENCE b/WHENCE
index da882744d439..1e5304061b8f 100644
--- a/WHENCE
+++ b/WHENCE
@@ -5828,8 +5828,8 @@ Licence: Redistributable. See LICENSE.amlogic_vdec for details.
 
 Driver: ice - Intel(R) Ethernet Connection E800 Series
 
-File: intel/ice/ddp/ice-1.3.28.0.pkg
-Link: intel/ice/ddp/ice.pkg -> ice-1.3.28.0.pkg
+File: intel/ice/ddp/ice-1.3.30.0.pkg
+Link: intel/ice/ddp/ice.pkg -> ice-1.3.30.0.pkg
 
 License: Redistributable. See LICENSE.ice for details
 
diff --git a/intel/ice/ddp/ice-1.3.28.0.pkg b/intel/ice/ddp/ice-1.3.30.0.pkg
similarity index 97%
rename from intel/ice/ddp/ice-1.3.28.0.pkg
rename to intel/ice/ddp/ice-1.3.30.0.pkg
index fdef8007694c112c4ded77395f87b4e8575fa144..454a2a6ea1930c0abcce83b1f2bf7a58061fa3b6 100644
GIT binary patch
delta 1979
zcmezINOQ|#Eonvu1_o9jmI2}dAie^`E`|&YHHBOg#q}BGCb~DX8k!n&F-$x^k(r0}
z+2+}Xxs3IvO~3ADO_LV1x~rJI;4{N{wj07<Ri7BYv_Ahtr=6?jeZj)E3I9~Stxq}-
z)>L-n>s!CBr%~13v0Vub=fjp&Z!VaUJO40OqTavyXJ5}A)15zS_O$<rNlEw1Ro*b=
zJzjJzdc*l|+wRSOb9alu0?|_k1Xy@Hp7+i-I$6_xp?coNJtp-@_wW4sbXUM=&cv?!
zU-pUKI(7Ejw)HD-p4`gxpY8IkQ1^99Ug}@}GmEWYZ{3&6#z&{m50n1!eI0ky581F!
zwHmpJmEOMTC-0y8wzM;M_N~j&W;ecV&M5t1;Li0&M9^iL+h&!W({s{{+OnOFbl%WT
zv7hnTy7B7#n6oc@J>NZBShw2fnI15hP(V*zV~poZovyPjnM+>J{<W^y>b6MXJhlRf
zM-k1_wY)i}H-<9jY&Wpt^kCoIz|zAy*+Ec1!AfNM?l($nx~i_&JC^;FG&RY6_)dDZ
zv2c>n7LVE1`G%Vd1P`z&IPAQ}>91nZxAu3V%1NWb`k%TUMN4k|DsoRLag&KFnz}ha
z!hu=g`k8+%{C2aZdu)1>=->G3i0N|crz+ROd}k_Z>|A4a)n)SrX`rh0&S%@(&ADFA
zU*6R7%enU6{#DYqg}Bbid|CXCYeUNC?#%-79YUk=JQCvBNN96aqB~PPI2p4turo3=
zI7Dnnx|(KMEvBpO;0Y=j7#zB>iy!F0F7D8eLmY=W4&82~YQV03vR|6m<T)wwAn!mN
z-EeD7+WAGPtQwkN9|8%8qcO!Hj>aMmb~I_?It&fOYuKEYYQV@O$1u@Hrg=+R`<66D
zAZFUWC5>63Z2FFe%oDa>xx@T{dHRG6j4JIF51F@DJY<PkjVUvcb$i7`w$@cl85z_6
zTeCX>>Fv%o?B-vWS2=PBEUz-;5ZGQ7$RWhZXf?ezio=o7di(h(j=lUy+$;{&;OT`|
zIc&EZ?&G-3$l@6gW;R{%HizYQ#{(Rejly5}l^GZsL>SiassQN&yhco>+j|{37xQf2
z;>XFs$jGsMuRrHf#_4T=oIN1-@=dP@<P_L062$4pKfNyzA}A)x#NfgKGC+iZg;^Cy
zOE7D(a&MPR;*95?3@jG6R}^wGB}m`kvjob?FihdH0@53}rZHIqX%F5$M$PS0FLHKs
zZeMbn^9n0aM+-1WIFGZk`}n(iIy?GI7kt5KIB^2&_L}FMe>%k#fRPSL#uh+^r?aa<
zP-$LCW^U?ae?!@NCa_!ug8-1`VaQ^TWHe@oROV3NP;dZ31|<*+1phMv0TT;{fCAYx
z&<)7&KL~7R=in^l1XcwiY=VpoJ|Jf{@Gv+qFfqt8C`>Oj;t=IZU=Rhm4a~pi#38eJ
MiOCfnpoRxb0GjpPJpcdz

delta 1892
zcmdn8SnJ0lO>ssB1_l-&mH^@$Aie;^4u%X9rS%zQCVDrsnwxPk{GWJvBC{~p)6Me@
za~bPzF1NkA%+IjYcE`&75nQ5C9z4;UR+GzPqqn|R=AQaFo%!>LCnkruycW0L7GAEf
zeVg|7do!xudTi0Ub@Sb)zC(*<t(Fj&_hR-Z9u^-Jsg+$Su7xH$YZf=u=httlHrKAs
zv@_hjQfI+7uUy9^5zmXgvTF+BOE+pQ-G9D4y5vF6?RrIrvra+>A3Tlyd)-ICX7(8u
zy|c6QxLH5U+|7EmLHwBW%Lz@bNpjaC&R<Gx2yA_R?ql^CtBLouS8Lw8k<^r(d~SVc
ztkRisp>Uo6ix%SrMG@6ai5q6j(W$jM;o?0r*mb7vhFy!=nr1CFeLQ#d>h_I%Welc;
zFC3IqPHkWOyy&c^5lbd8h){s}$wU2xzS*<1mp<Ioc6-)&>+)4a>ko5kerUFIdoGZ?
zWO}1MbI#@hmM1(49{fLk`&7JLac?hkuVV21<a-}N_jTUQd0MqIU&p5LJlp0qjtAHj
zej3EH7Yioe+cr1Q?G>-HtLVIfQ#bc***Wij>|L!Fwpp8dJRF!6jMtplK1sPVgW;Qq
ztY4~q!`Xx*BJP_ESk~=$H}Upg{<6()yn(82=3S89@$};7gj=!_`ELRo#Va)LIT@%%
z80B+qu|3yxW3!LHk<er}!?4j99=<VLDN@e_O0ujB?2HTz4iOuYuBMq*i|J}R00lQh
zi#v2<7eCO0UEHA`hd2&%9J<{|)qq|7<gOIcdboodZmmf>zbKVeLlfjVkVha6#uSG*
z7>hXA!K8`nFf<UaVRKfh0V9(P!^8lY<{fG6JJJ||m}&ctG-ide?HPBOKQK?<^N@MM
z<N_9z_L_&x+iM=O#H_}Un8>=lW+GebDyHn*>C86lPC$CQyA8Yf*X4DN90JSh3^@e0
z*9CG2aWa}upBTmA$Ya3};2a<99un^w5;=XN52x97k!X$@emv6I98ZEci&BeIi^@_{
zjHff+;nbcufoHqLK8_2FaB-9AhM^qh+dU3&m^BK&;a6s0Xb@pA;8Ow8E_}-v&9_f<
z<Xp@nXv*N`<LDmm9ug4m>JcB{5(+8-4Mok+h2woZ{iYW>acWMSz_Q)MkCTIuk!`!J
zKj%_LV0eg4uL<N7nEoVyvuk@-AZGwSNKBN8;Q|N9IuV8m%&I_o39}X}@AR7qoW0v8
zC342`Z?7rjWJ-{Z;kN`z$}mW9TLEbk?rBWcK>7@CAEWm6nHM>`IVGTO3~&qzb`3&v
zs+J7YsTi^_7prYoxy^Y67%LAskF)ZIg!=ip`oxF%IQqqVPIrvtG}zwoobyj70MMh>
AV*mgE

-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
